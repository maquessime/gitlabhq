class Spinach::Features::ProjectCommitsMarkReviewed < Spinach::FeatureSteps
  include SharedAuthentication
  include SharedProject
  include SharedPaths
  include RepoHelpers
  
  step 'I click on commit link' do
    visit project_commit_path(@project, sample_commit.id)
  end
  
  step 'I click mark as reviewed button' do
    click_link "Mark as Reviewed"
  end
  
  step 'I see mark as unreviewed button' do
    page.should have_content "Mark as Unreviewed"
  end
end
