title "My Test Controls"

control "artifact-exists" do
  impact 1
  title "Artifact exists"
  desc "Ensure that the artifact exists in the correct directory."
  describe file("G:\\artifact_v1.zip") do
    it { should exist }
    it { should be_file }
  end
end
