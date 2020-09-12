title "My Test Controls"

control "accela-drive" do
  impact 1
  title "Accela Drive"
  desc "Ensure that the Accela drive exists and is properly formatted."
  describe filesystem('G:') do
    its('type') { should cmp 'NTFS' }
  end
end

control "artifact-exists" do
  impact 1
  title "Artifact exists"
  desc "Ensure that the artifact exists in the correct directory."
  describe file("G:\\artifact_v1.zip") do
    it { should exist }
    it { should be_file }
  end
end
