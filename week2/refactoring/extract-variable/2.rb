def tell_browser_type(browser)
  if(browser.type == "Safari")
    puts "You are using the Safari browser."
  else
    puts "You are using a non-Safari browser."
  end
end


def tell_browser_type(browser)
  if(browser.type == "Safari")
    return "You are using the Safari browser."
  end
end 