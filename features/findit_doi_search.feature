Feature: FindIt DOI Search

  Scenario: Findit DOI Search
    Given I go to FindIt Home page
    Then I enter "10.2307/463683" into the doi field 
    When I click "Search"
    Then I should see "The Dream and the Dialogue" page
    When I click on the Online Link "JSTOR Arts and Sciences III"
    Then you should be on "www.jstor.org"
    And the article "The Dream and the Dialogue" is shown 

  Scenario: Link Resolver Catalyst
    Given I go to "https://catalyst.library.jhu.edu/?q=biale end of enlightenment"
    When I click on the first "Find It @ JH"
    Then Then you shold go to  "findit"


    #  Scenario: Link Resolver WorldCat
    #    Given I go to "https://www.library.jhu.edu"
    #    When I search do a worldcat search for "information architecture for the world wide web"
    #    Then I should find an item "Information architecture for the World Wide Web"
    #    When I click on the link "Information architecture for the World Wide Web"
    #    Then I should see a "Find It @ JH Libraries" link
    #    When I click on "Find It @ JH Libraries"
    #    Then I should find the ISBN "9781491911686" on FindIt
    #
    #
    #  Scenario: Link Resolver GoogleScholar
    #    Given I go to "https://www.library.jhu.edu"
    #    When I do a googlescholar search  for "Pinto Soares Multimodal Chromatography Capture of Monoclonal Antibodies"
    #    When you click on the first "FIND IT@ JHU FullText" link
    #    Then you should should find the ISBN 0003-2700
    #    When you click on "American Chemical Society Journals"
    #    Then you should be on the "http://pubs.acs.org/" site
    #    And you should see the article "High-Throughput Nanoliter-Scale"

