When("I access the system with a valid username and password") do
    app.load
    app.acess
  end
  
Then("I check if I am logged into the system") do
    expect(page).to have_xpath("/html/body/div[1]/div[2]")
  end