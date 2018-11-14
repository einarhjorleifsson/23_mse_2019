#' set_prognosis
#'
#' @param infile
#' @param outfile
#' @param fbar
#' @param hr
#' @param w.rho
#' @param w.cv
#' @param rec.rho
#' @param ass.cv
#' @param ass.rho
#' @param ass.bias
#' @param Btrigger
#' @param MaxChange
#' @param mW.years
#' @param LastYearsTacRatio
#'
#' @export
set_prognosis <- function(infile,
                          outfile,
                          FishingMortality,
                          HarvestRate,
                          WeightCorr,
                          WeightCV,
                          RecrCorr,
                          AssessmentCV,
                          AssessmentCorr,
                          AssessmentBias,
                          Btrigger,
                          MaxChange,
                          Meanwtyears,
                          LastYearsTacRatio,
                          HCRreflength) {

  Replace <- function(txt,parameter,pattern){
    if(!missing(parameter)){
      i <- grep(pattern,txt)
      if(!any(i)){
        print(paste("   ",pattern,"   ","does not exist"))
        break()
      }
      txt[i] <- paste(as.character(parameter),"\t",pattern)
    }
    return(txt)
  }

  txt <- readLines(infile)
  txt <- Replace(txt,FishingMortality,'# FishingMortality')
  txt <- Replace(txt,HarvestRate,'# HarvestRate')
  txt <- Replace(txt,WeightCorr,'# WeightCorr')
  txt <- Replace(txt,WeightCV,'# WeightCV')
  txt <- Replace(txt,RecrCorr,'# RecrCorr')
  txt <- Replace(txt,AssessmentCV,"# AssessmentCV")
  txt <- Replace(txt,AssessmentCorr,"# AssessmentCorr")
  txt <- Replace(txt,AssessmentBias,"# AssessmentBias")
  txt <- Replace(txt,Btrigger,"# Btrigger")
  txt <- Replace(txt,MaxChange,"# MaxChange")
  txt <- Replace(txt,Meanwtyears,"# Meanwtyears")
  txt <- Replace(txt,LastYearsTacRatio,"# LastYearsTacRatio")
  txt <- Replace(txt,HCRreflength,"# HCRreflength")
  write.table(txt,file=outfile,row.names=F,col.names=F,quote=F)


}
