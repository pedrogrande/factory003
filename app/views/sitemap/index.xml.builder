xml.urlset(xmlns: "http://www.sitemaps.org/schemas/sitemap/0.9") do
  @static_paths.each do |path|
    xml.url do
      xml.loc ("#{@base_url}#{path}")
      xml.changefreq("weekly")
    end
  end
  @courses.each do |course|
    xml.url do
      xml.loc "#{@base_url}#{url_for(course)}"
      xml.lastmod course.updated_at.strftime("%F")
      xml.changefreq("weekly")
    end
  end
  @events.each do |event|
    xml.url do
      xml.loc "#{@base_url}#{url_for(event)}"
      xml.lastmod event.updated_at.strftime("%F")
      xml.changefreq("weekly")
    end
  end
end