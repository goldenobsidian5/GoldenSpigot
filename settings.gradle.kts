rootProject.name = "dashspigot"

includeBuild("build-logic")

this.setupSubproject("dashspigot-server", "DashSpigot-Server")
this.setupSubproject("dashspigot-api", "DashSpigot-API")
this.setupSubproject("paperclip", "paperclip")

fun setupSubproject(name: String, dir: String) {
    include(":$name")
    project(":$name").projectDir = file(dir)
}
