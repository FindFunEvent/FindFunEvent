$(function() {
	  var now = new Date();
	  var anneeAct = now.getFullYear();
	  var moisAct = now.getMonth() + 1;
	  var jourAct = now.getDate();
	  var heureAct = now.getHours();
	  
	  	var annee = anneeAct;
	    var mois = moisAct;
	    var jour = jourAct;
	 
	    
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    var etatBoutonLdc=0;
	    var etatBoutonLigue1=0;
	    var etatBoutonLeague=0;
	    var etatBoutonSerie=0;
	    var etatBoutonBundesliga=0;
	    var etatBoutonLiga=0;
	    
	    
	   
	$("#bouton").on("click", function traitement() {
		
		
	    var ligue = "uefa.champions";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonLdc==0){
	    for (var k=jour;k>1;k--){
	    	
	    	if (k<10 && mois<10){
	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	    	if (k<10 && mois>=10){
	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	    	if (mois<10 && k>=10){
	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	    	if (k>=10 && mois>=10) {
	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    	
	    	
			
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        if (data.events.length > 0) {
	        	nombreJourneeAffichee++;
	            for(var j=0;j<data["events"].length;j++){
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	               
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	           
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["date"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	            console.log("jour : "+jour)
	            console.log("journee : "+nombreJourneeAffichee);
	            console.log("j : "+j);
	            
	            $("#ldc"+j+nombreJourneeAffichee).html("<div class='o'class='o'style=\"width:100%; text-align: center; color:grey; font-weight:bold;\">"+infoLigue+" - "+dateMatch+"</div><div class='o'class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonLdc=1;
	            }
	
	        }
	    });
	    }
			
		}
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonLdc=0;
			
			

		}
		
	});
	    
	  
	
	$("#bouton2").on("click", function () {
	   
	    var ligue = "fra.1";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonLigue1==0){
	    	
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    	var k;
	    	 for ( k=jour;k>1;k--){
	 	    	
	 	    	if (k<10 && mois<10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	 	    	if (k<10 && mois>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	 	    	if (mois<10 && k>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	 	    	if (k>=10 && mois>=10) {
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        
	        if (data["events"].length > 0) {
	        	nombreJourneeAffichee++;
	            for(var j=0;j<data["events"].length;j++){
	            	
	            	
	            	
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	            
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["competitions"][0]["startDate"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	           console.log(k);
	            console.log(j);
	            $("#ligue1"+j+nombreJourneeAffichee).html("<div class='o'style=\"width:100%; text-align: center; font-weight:bold; color:gray;\">"+infoLigue+" - "+dateMatch+"</div><div class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonLigue1=1;
	        }
	
	        }
	        
	    });
	   }
	    }	
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonLigue1=0;
			
			

		}
	});
	
	
	
	$("#bouton3").on("click", function () {
		   
	    var ligue = "eng.1";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonLeague==0){
	    	
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    	var k;
	    	 for ( k=jour;k>1;k--){
	 	    	
	 	    	if (k<10 && mois<10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	 	    	if (k<10 && mois>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	 	    	if (mois<10 && k>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	 	    	if (k>=10 && mois>=10) {
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        
	        if (data["events"].length > 0) {
	        	nombreJourneeAffichee++;
	        	
	            for(var j=0;j<data["events"].length;j++){
	            	
	            	
	            	
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	            
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["competitions"][0]["startDate"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	           console.log(k);
	            console.log(j);
	            $("#league"+j+nombreJourneeAffichee).html("<div class='o'style=\"width:100%; text-align: center;font-weight:bold; color:gray;\">"+infoLigue+" - "+dateMatch+"</div><div class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonLeague=1;
	        }
	
	        }
	        
	    });
	   }
	    }
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonLeague=0;
			
			

		}
	});
	
	$("#bouton4").on("click", function () {
		   
	    var ligue = "ita.1";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonSerie==0){
	    	
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    	var k;
	    	 for ( k=jour;k>1;k--){
	 	    	
	 	    	if (k<10 && mois<10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	 	    	if (k<10 && mois>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	 	    	if (mois<10 && k>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	 	    	if (k>=10 && mois>=10) {
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        
	        if (data["events"].length > 0) {
	        	nombreJourneeAffichee++;
	        	
	            for(var j=0;j<data["events"].length;j++){
	            	
	            	
	            	
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	            
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["competitions"][0]["startDate"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	           console.log(k);
	            console.log(j);
	            $("#serie"+j+nombreJourneeAffichee).html("<div class='o'style=\"width:100%;font-weight:bold; text-align: center; color:gray;\">"+infoLigue+" - "+dateMatch+"</div><div class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonSerie=1;
	        }
	
	        }
	        
	    });
	   }
	    }
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonSerie=0;
			
			

		}
	});
	
	$("#bouton5").on("click", function () {
		   
	    var ligue = "ger.1";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonBundesliga==0){
	    	
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    	var k;
	    	 for ( k=jour;k>1;k--){
	 	    	
	 	    	if (k<10 && mois<10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	 	    	if (k<10 && mois>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	 	    	if (mois<10 && k>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	 	    	if (k>=10 && mois>=10) {
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        
	        if (data["events"].length > 0) {
	        	nombreJourneeAffichee++;
	            for(var j=0;j<data["events"].length;j++){
	            	
	            	
	            	
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	            
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["competitions"][0]["startDate"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	           console.log(k);
	            console.log(j);
	            $("#bundesliga"+j+nombreJourneeAffichee).html("<div class='o'style=\"width:100%; font-weight:bold; text-align: center; color:gray;\">"+infoLigue+" - "+dateMatch+"</div><div class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonBundesliga=1;
	        }
	
	        }
	        
	    });
	   }
	    }
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonBundesliga=0;
			
			

		}
	});
	
	$("#bouton6").on("click", function () {
		   
	    var ligue = "esp.1";
	    var nombreJourneeAffichee=0;
	    if (etatBoutonLiga==0){
	    	
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	    	var k;
	    	 for ( k=jour;k>1;k--){
	 	    	
	 	    	if (k<10 && mois<10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+"0"+k + "&league=" + ligue;}
	 	    	if (k<10 && mois>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+"0"+k + "&league=" + ligue;}
	 	    	if (mois<10 && k>=10){
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +"0"+mois+k + "&league=" + ligue;}
	 	    	if (k>=10 && mois>=10) {
	 	    		var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + annee +mois+k + "&league=" + ligue;}
	    
	    
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        
	        
	        if (data["events"].length > 0) {
	        	nombreJourneeAffichee++;
	            for(var j=0;j<data["events"].length;j++){
	            	
	            	
	            	
	                
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                
	            let faitMatchDomicile = "";
	            var idEquipeDomicile = data["events"][j]["competitions"][0]["competitors"][0]["team"]["id"];
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if(teamIemeFait == idEquipeDomicile){
	                    faitMatchDomicile += logoBut +" "+data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                }
	            }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeDomicile) {
	                        faitMatchDomicile +=
	                            logoCartonRouge + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"] + "<br>"
	
	                    }
	                }
	            }
	            //recuperation du score de l'équipe domicile dans JSON
	            let scoreDomicile = data["events"][j]["competitions"][0]["competitors"][0]["score"];
	
	            //recuperation du score de l'équipe exterieur dans JSON
	            let scoreExterieur = data["events"][j]["competitions"][0]["competitors"][1]["score"];
	
	            //recuperation du nom de l'équipe exterieur dans JSON
	            let faitMatchExterieur = ""
	            var idEquipeExterieur = data["events"][j]["competitions"][0]["competitors"][1]["team"]["id"];
	            
	            for (var i = 0; i < data["events"][j]["competitions"][0]["details"].length; i++) {
	                var iemeFait = data["events"][j]["competitions"][0]["details"][i]["type"]["text"]
	                var teamIemeFait = data["events"][j]["competitions"][0]["details"][i]["team"]["id"]
	                if (iemeFait == "Goal" || iemeFait == "Penalty - Scored" || iemeFait == "Goal - Header") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	
	                            logoBut + " " + data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	
	                    }
	                }
	                if (iemeFait == "Red Card") {
	                    if (teamIemeFait == idEquipeExterieur) {
	                        faitMatchExterieur +=
	                            logoCartonRouge + " "+ data["events"][j]["competitions"][0]["details"][i]["clock"]["displayValue"] + " " + data["events"][j]["competitions"][0]["details"][i]["athletesInvolved"][0]["shortName"]+"<br>"
	                    }
	                }
	            }
	
	            //recuperation du logo de l'équipe exterieur dans JSON
	            let logoNomExterieur = "<img class=\"logoExterieur\" src=" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["logo"] + " height=75 width=75>";
	            logoNomExterieur += "<br>" + data["events"][j]["competitions"][0]["competitors"][1]["team"]["name"];
	            var stade=data["events"][j]["competitions"][0]["venue"]["fullName"];
	            var horaireMatchComplete=data["events"][j]["competitions"][0]["startDate"];
	            
	            var horaireMatchSpe=horaireMatchComplete[11]+horaireMatchComplete[12]+horaireMatchComplete[13]+horaireMatchComplete[14]+horaireMatchComplete[15]+" h";
	            var infoLigue=data["leagues"][0]["name"];
	            var dateMatch=horaireMatchComplete[8]+horaireMatchComplete[9]+" / "+horaireMatchComplete[5]+horaireMatchComplete[6];
	           console.log(k);
	            console.log(j);
	            $("#liga"+j+nombreJourneeAffichee).html("<b><div class='o'style=\"width:100%; font-weight:bold;text-align: center; color:gray;\">"+infoLigue+" - "+dateMatch+"</div></b><div class='o'id=\"horaireLieu1\" style=\"width:100%; text-align: center; color:grey;\">"+horaireMatchSpe + " - " +stade+"</div><TABLE id=\"affichageLdc\" BORDER=0 CELLPADDING=1 WIDTH=100%><TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <b><P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><b><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><b><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD><br></span>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD></TABLE>");
	            etatBoutonLiga=1;
	        }
	
	        }
	        
	    });
	   }
	    }
	    else{
			$('TABLE').remove();
			$('div').remove('.o');
			
			etatBoutonLiga=0;
			
			

		}
	});
});
