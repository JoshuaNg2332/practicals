def tell_browser_type(browser)
  safari_message = "You are using the Safari browser."
  not_safari_message = "You are using a non-Safari browser."

  safari?(browser) ? puts safari_message : puts not_safari_message
end


private
def safari?
  browser.type == "Safari"
end
