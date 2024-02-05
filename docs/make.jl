uuid = "c7e1bd25-b53e-4944-9b3a-2adf817a4483"
authors = ["Umberto Neviani"]


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

DocMeta.setdocmeta!(HelloworldJulia, :DocTestSetup, :(using HelloworldJulia); recursive=true)

# Check and create necessary directories
isdir(docs_dir) || mkdir(docs_dir)
isdir(build_dir) || mkdir(build_dir)

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
    format = Documenter.HTML(prettyurls=get(ENV, "CI", "false") == "true"),
    pages = [
        "Home" => "index.md",
        "Esempio1" => "page2.md",
        "Helloworld" => "page3.md",
    ],
)

deploydocs(
    repo = "github.com/Umbertoneviani/HelloworldJulia",
    target = build_dir,
    branch = "gh-pages",
    push_preview = true,  # Force the deployment even if it's a preview
)




# Only deploy if this script is run in a CI environment
#if get(ENV, "CI", "false") == "true"

#else
#    println("Skipping deployment because CI environment was not detected.")
#end
