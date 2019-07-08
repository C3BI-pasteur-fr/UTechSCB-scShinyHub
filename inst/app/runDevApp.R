#' this is used to run the app without installing it.
#'

localContributionDir = "~/Rstudio/scShinyHubContributionsBJ/"
defaultValueSingleGene = "pecam1"
defaultValueMultiGenes = "pecam1, cdh5, eng"
defaultValueRegExGene = "" # tip: '^CD7$|^KIT$; genes with min expression
DEBUG = TRUE
DEBUGSAVE = FALSE
assign(".SCHNAPPs_locContributionDir", localContributionDir, envir = globalenv())
assign(".SCHNAPPs_defaultValueSingleGene", defaultValueSingleGene, envir = globalenv())
assign(".SCHNAPPs_defaultValueMultiGenes", defaultValueMultiGenes, envir = globalenv())
assign(".SCHNAPPs_defaultValueRegExGene", defaultValueRegExGene, envir = globalenv())
assign(".SCHNAPPs_DEBUG", DEBUG, envir = globalenv())
assign(".SCHNAPPs_DEBUGSAVE", DEBUGSAVE, envir = globalenv())

devscShinyApp = TRUE
packagePath = "inst/app"
source(paste0(packagePath,  "/server.R"))
source(paste0(packagePath,  "/ui.R"))
shinyApp(ui = scShinyUI, server = scShinyServer)
