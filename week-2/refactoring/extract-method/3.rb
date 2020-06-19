def send_correct_page(browser, window)

  safari_small_message = "You are using the Safari browser in a small window."
  not_safari_or_big_message = "You are not using the Safari browser or have a big window."

  browser?(browser) && window?(window) ? safari_small_message : not_safari_or_big_message

end

private

def browser?(browser)
  browser.type == "Safari"
end

def window?(window)
  window.size < "768px"
end