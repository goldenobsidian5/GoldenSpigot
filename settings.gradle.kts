rootProject.name = "dashspigot"

includeBuild("build-logic")

setupSubproject("dashspigot-server", "DashSpigot-Server")
setupSubproject("dashspigot-api", "DashSpigot-API")
setupSubproject("paperclip", "paperclip")

fun setupSubproject(name: String, dir: String) {
    include(":$name")
    project(":$name").projectDir = file(dir)
}
