def send_correct_page(browser, window)
  if(browser.type == "Safari" && window.size < "768px")
    return "You are using the Safari browser in a small window."
  else
    return "You are not using the Safari browser or have a big window."
  end
end

def send_correct_page(browser, window)
  
  browser_type_is_safari = browser.type == "Safari"
  window_size = window.size < "768px"

  safari_small_window = "You are using the Safari browser in a small window."
  safari_big_window = "You are not using the Safari browser or have a big window."

  browser_type_is_safari && window_size ? safari_small_window : safari_big_window

end