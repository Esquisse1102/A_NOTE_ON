function hfun_bar(vname)
  val = Meta.parse(vname[1])
  return round(sqrt(val), digits=2)
end

function hfun_m1fill(vname)
  var = vname[1]
  return pagevar("index", var)
end

function lx_baz(com, _)
  # keep this first line
  brace_content = Franklin.content(com.braces[1]) # input string
  # do whatever you want here
  return uppercase(brace_content)
end


########### 参考文献出力用 ###############

using BibTeX

function find_matching_reference(keyword::String, bibfile::String)
    # BibTeXファイルの読み込み
    bibdata = read(bibfile, String)
    bibentries = BibTeX.parse_bibtex(bibdata)

    # キーワードに一致する文献を検索
	if !(keyword in keys(bibentries[2]))
		return "??"
	end
	matching_entry = bibentries[2][keyword]

    # 文献情報を整形して文字列にする
    output_string = format_entry(matching_entry)


    return output_string
end

function format_entry(entry)
    author_str = format_authors(entry["author"])
    title_str = entry["title"]
    if "journal" in keys(entry)
        journal_str = entry["journal"]
	else
		journal_str = missing
	end
	if "volume" in keys(entry)
        volume_str = entry["volume"]
	else
		volume_str = missing
	end
	if "pages" in keys(entry)
        pages_str = entry["pages"]
	else
		pages_str = missing
	end
    year_str = entry["year"]

    formatted_str = "$author_str, \"$title_str\""
    
    if !ismissing(journal_str)
        formatted_str *= ", $journal_str"
    end

    if !ismissing(volume_str)
        formatted_str *= ", vol. $volume_str"
    end
    
    if !ismissing(pages_str)
        formatted_str *= ", pp. $pages_str"
    end
    
    if !ismissing(year_str)
        formatted_str *= ", $year_str."
    end

    formatted_str *= "\n"

    return formatted_str
end


function format_authors(authors::String)
    # 著者の各部分を取得
    author_list = split(authors, " and ")

    # 各著者のフォーマットを行う
    formatted_authors = [format_author(author) for author in author_list]
    
    # フォーマットされた著者を連結して返す
    return join(formatted_authors, "and ")
end

function format_author(author)
    # 姓と名を分割
    parts = split(author, ", ")
    
    # 姓と名の順序を変更してフォーマット
    formatted_author = join(reverse(replace(parts, " " => "")), " ")
    
    return formatted_author
end


function hfun_ref(ref)
	return find_matching_reference(ref[1], "_assets/references.bib")
end
  