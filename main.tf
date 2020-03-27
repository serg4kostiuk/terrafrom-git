resource "github_repository" "develop2244" {
	name = "mynamerepository"
 	description  = "MyRepoForPracticeDevs"
	private = false
  auto_init = true
}

resource "github_branch_protection" "branch-prot-name" {
	  repository     = "${github_repository.develop2244.name}"	  
	  branch         = "master"
	  enforce_admins = true
}
