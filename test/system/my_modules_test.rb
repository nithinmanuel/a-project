require "application_system_test_case"

class MyModulesTest < ApplicationSystemTestCase
  setup do
    @my_module = my_modules(:one)
  end

  test "visiting the index" do
    visit my_modules_url
    assert_selector "h1", text: "My Modules"
  end

  test "creating a My module" do
    visit my_modules_url
    click_on "New My Module"

    fill_in " ", with: @my_module. 
    fill_in "Description", with: @my_module.description
    fill_in "Meta Title", with: @my_module.meta_title
    fill_in "Name", with: @my_module.name
    click_on "Create My module"

    assert_text "My module was successfully created"
    click_on "Back"
  end

  test "updating a My module" do
    visit my_modules_url
    click_on "Edit", match: :first

    fill_in " ", with: @my_module. 
    fill_in "Description", with: @my_module.description
    fill_in "Meta Title", with: @my_module.meta_title
    fill_in "Name", with: @my_module.name
    click_on "Update My module"

    assert_text "My module was successfully updated"
    click_on "Back"
  end

  test "destroying a My module" do
    visit my_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "My module was successfully destroyed"
  end
end
