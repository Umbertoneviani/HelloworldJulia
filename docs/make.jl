using Documenter
using HelloworldJulia

# Ensuring that the HelloworldJulia module is accessible
# If the HelloworldJulia module is not in the standard LOAD_PATH directories, use `include` instead
# include("path/to/HelloworldJulia.jl")

# Base information for the site generation
docs_dir = joinpath(@__DIR__)
build_dir = joinpath(docs_dir, "build")
source_dir = joinpath(docs_dir, "src")
repo_url = "https://github.com/Umbertoneviani/HelloworldJulia"

# Check and create necessary directories
isdir(docs_dir) || mkdir(docs_dir)
#isdir(build_dir) || mkdir(build_dir)

# Generate the 'index.md' file dynamically from the 'README.md'
readme_path = joinpath(dirname(docs_dir), "README.md")
index_md_path = joinpath(source_dir, "index.md")

# Check if README.md exists
if isfile(readme_path)
    # Copy README.md content to the index.md
    cp(readme_path, index_md_path; force=true)
else
    error("README.md file does not exist at $readme_path")
end

# Set the edit URL for the 'index.md' file to point to the repository's README.md
edit_url = "$(repo_url)/blob/main/README.md"
open(index_md_path, "a") do io
    println(io, "\n\n```@meta\nEditURL = \"$edit_url\"\n```")
end

# Documenter settings
makedocs(
    sitename = "Esempi Documentation",
    modules = [HelloworldJulia],
    format = Documenter.HTML(prettyurls=get(ENV, "CI", "false") == "false"),
    pages = [
        "Home" => "index.md",
        "Esempio1" => "page2.md",
        "Helloworld" => "page3.md",
    ],
)

# Only deploy if this script is run in a CI environment
if get(ENV, "CI", "false") == "false"
    deploydocs(
        repo = repo_url,
        target = build_dir,
        branch = Main,
        # Add other necessary deployment options here, such as:
        # push_preview = true, # if you want to push a preview version of the docs
        # julia = "1.x", # specify the Julia version if necessary
    )
else
    println("Skipping deployment because CI environment was not detected.")
end
