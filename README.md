Answers to requirement questions located in SR_QA_Engineer_project_Requirement_Answers.txt
Example for how I might add manual steps for these features can be found in manual_test.steps

By the time I started by automating using watir/cucumber/Rspec and then answering the questions I was pressed for time.  I wanted to display some understanding of Cypress as well, as I have a little experience with that, and with more time I could have completed this, however the instructions were to spend no more than 3 hours on this and I had already far surpassed that.

# Ruby Version
ruby -v  
ruby 3.1.2p20 (2022-04-12 revision 4491bb740a) [x86_64-darwin21]  

Clone repo  

Install Gems:  
  bundle install<br>
  confirm gems install successfully

Execute test:  
  cucumber --format pretty RUN_LOCAL=true BROWSER=firefox --tags @search_test_1  
  
  BROWSER options: firefox, chrome, headless  
  --tags options: @search (will run all tests with this tag, search_test_2 & @search_test_3 not implements per challenge requirements)  
                  @search_test_1 will run indivdual test with this tag  
                  @search_test_2 will run indivdual test with this tag (not implemented)  
                  @search_test_3 will run indivdual test with this tag (not implemented)  <br>
<br>
