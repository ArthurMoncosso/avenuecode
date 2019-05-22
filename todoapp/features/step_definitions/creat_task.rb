When("I create a new task") do
    app.load
    app.createTask
  end
  
Then("I validate if the task was created") do
    page.has_text?('arthur123')
  end