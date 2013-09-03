@title_slide_title_font_size = @x_large_font_size
@title_slide_subtitle_font_size = @small_font_size
@title_slide_content_source_font_size = @x_small_font_size
@title_slide_date_font_size = @x_small_font_size
@title_slide_author_font_size = @small_font_size

@default_emphasis_color = "#C66"
include_theme("night-black")

@lightning_talk_color = @default_foreground
@lightning_talk_background_color = @default_background
@lightning_talk_as_large_as_possible = true
include_theme("lightning-talk-toolkit")

match(Slide) do |slides|
  slides.each do |slide|
    if slide.lightning_talk?
      slide.lightning_talk
    end
  end
end

match(TitleSlide, Title) do |title|
  title.margin_top = @space
  title.margin_bottom = @space * 2
end

match(TitleSlide, Subtitle) do |subtitle|
  subtitle.prop_set("style", "italic")
end

match(Slide, "**", Note) do |texts|
  texts.prop_set("size", @xx_small_font_size)
  texts.prop_set("foreground", "#99F")
  texts.prop_set("style", "italic")
end

match(Slide, Body) do |bodies|
  bodies.vertical_centering = true
end

@slide_footer_info_left_text = '希望の関数と絶望の副作用'
include_theme("slide-footer-info")