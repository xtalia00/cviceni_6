indexstart = function(vek){
  k=0
  for (i in 2:length(vek)) {
    index = i
    k= k+i-1
    if (sum(vek[1:i])==k){
      next}
    else{
      break
    }
  }
  return(index)
}


vzes_ses = function(vek){
  inde_vek = numeric(length(vek))
  inde_vek[1]= 1
  inde_vek[length(vek)]=1
  
  for (i in 2:length(vek)){
    if (vek[i] == ( vek[i-1] +1)){
      inde_vek[i]=1
      inde_vek[i-1]=1
    }
    else{next}
      
  }
  return(inde_vek)
}



breakpointsort = function(vek){
  pomoc_vek = numeric(length(vek)+2)
  pomoc_vek[length(vek)+2]=max(vek)+1
  
  
  
}