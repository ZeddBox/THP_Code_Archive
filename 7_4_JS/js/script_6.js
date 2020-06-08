function script_6() {
  
  let arn_1 = "CCGUCGUUGCGCUACAGC"
  let arn_2 = "CCUCGCCGGUACUUCUCG"
  
  console.log(arn_1 = arn_1.match(/.{1,3}/g));

  arn_1.forEach(arn_1_prot => {
    if(arn_1_prot === "UCU" || arn_1_prot === "UCC" || arn_1_prot === "UCA" || arn_1_prot === "UCG" || arn_1_prot === "AGU" || arn_1_prot === "AGC") {
      console.log("Sérine");
    }
    else if(arn_1_prot === "CCU" || arn_1_prot === "CCC" || arn_1_prot === "CCA" || arn_1_prot === "CCG") {
      console.log("Proline");
    }
    else if(arn_1_prot === "UUA" || arn_1_prot === "UUG") {
      console.log("Leucine");
    }
    else if(arn_1_prot === "UUU" || arn_1_prot === "UUC") {
      console.log("Phénylalanine");
    }
    else if(arn_1_prot === "CGU" || arn_1_prot === "CGC" || arn_1_prot === "CGA" || arn_1_prot === "CGG" || arn_1_prot === "AGA" || arn_1_prot === "AGG") {
      console.log("Arginine");
    }
    else if (arn_1_prot === "UAU" || arn_1_prot === "UAC") {
      console.log("Tyrosine");
    }
    else {
      console.log(`${arn_1_prot} non reconnu!`)
    }
  })

  console.log("-----------------------------------------------");
  console.log(arn_2 = arn_2.match(/.{1,3}/g));

  arn_2.forEach(arn_2_prot => {
    if(arn_2_prot === "UCU" || arn_2_prot === "UCC" || arn_2_prot === "UCA" || arn_2_prot === "UCG" || arn_2_prot === "AGU" || arn_2_prot === "AGC") {
      console.log("Sérine");
    }
    else if(arn_2_prot === "CCU" || arn_2_prot === "CCC" || arn_2_prot === "CCA" || arn_2_prot === "CCG") {
      console.log("Proline");
    }
    else if(arn_2_prot === "UUA" || arn_2_prot === "UUG") {
      console.log("Leucine");
    }
    else if(arn_2_prot === "UUU" || arn_2_prot === "UUC") {
      console.log("Phénylalanine");
    }
    else if(arn_2_prot === "CGU" || arn_2_prot === "CGC" || arn_2_prot === "CGA" || arn_2_prot === "CGG" || arn_2_prot === "AGA" || arn_2_prot === "AGG") {
      console.log("Arginine");
    }
    else if (arn_2_prot === "UAU" || arn_2_prot === "UAC") {
      console.log("Tyrosine");
    }
    else {
      console.log(`${arn_2_prot} non reconnu!`)
    }
  })
}
