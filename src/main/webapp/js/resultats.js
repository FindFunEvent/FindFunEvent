$(function() {

	$("#bouton").on("click", function () {
		
	    var annee = "2020";
	    var mois = "02";
	    var jour = "18";
	    var date=annee+mois+jour;
	    var ligue = "uefa.champions";
	    
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	
	    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + date + "&league=" + ligue;
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        console.log(nombreMatchJournee)
	        if (data.events.length > 0) {
	            for(var j=0;j<data["events"].length;j++){
	                console.log("tour de boucle : "+j)
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                console.log(logoNomDomicile)
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
	            console.log(idEquipeExterieur)
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
	
	            
	            $("#affichageLdc").html("<TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD>");
	console.log(j)
	        }
	
	        }
	        else { }
	    });
	});
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	$("#bouton2").on("click", function () {
	    var annee = "2020";
	    var mois = "03";
	    var jour = "08";
	    var date=annee+mois+jour;
	    var ligue = "fra.1";
	    
	    var logoBut = "<img src=\"https://images.emojiterra.com/twitter/v12/512px/26bd.png\" height=15 width=15/>";
	    var logoCartonRouge="<img src=\"https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Red_card.svg/200px-Red_card.svg.png\" height=15 width=15/>"
	
	    var url = "http://site.api.espn.com/apis/site/v2/sports/soccer/" + ligue + "/scoreboard?lang=fr&region=gb&calendartype=whitelist&limit=100&dates=" + date + "&league=" + ligue;
	    console.log(url)
	    $.get(url, function (data) {
	        var nombreMatchJournee=data["events"].length;
	        console.log(nombreMatchJournee)
	        if (data.events.length > 0) {
	            for(var j=0;j<data["events"].length;j++){
	                console.log("tour de boucle : "+j)
	            //on veut afficher dans l'ordre suivant : logo de l'équipe à domicile, nom de l'équipe à domicile, score de l'équipe à domicile, score de l'équipe exterieur, nom de l'équipe exterieur, logo de l'équipe exterieur
	
	            //preparation du logo de l'équipe domicile (id de l'image=#logoDomicile)
	            let logoNomDomicile = "<img class=\"logoDomicile\" src=";
	
	            //recuperation du logo de l'équipe domicile dans JSON
	            logoNomDomicile += data["events"][j]["competitions"][0]["competitors"][0]["team"]["logo"] + " height=75 width=75/> ";
	
	            //recuperation du nom de l'équipe domicile dans JSON
	            logoNomDomicile += "<br>" + data["events"][j]["competitions"][0]["competitors"][0]["team"]["name"];
	                console.log(logoNomDomicile)
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
	            console.log(idEquipeExterieur)
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
	
	            
	            $("#affichageLigue1").html("<TD WIDTH=\"20%\"> <P id=\"logoNomDomicile\">" + logoNomDomicile + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchDomicile\" class=\"gauche\">" + faitMatchDomicile + "</P></TD>" + "<TD WIDTH=\"4%\"> <P id=\"butDomicile\">" + scoreDomicile + "</P></TD>" + "<TD WIDTH=\"2%\"><P class=\"milieu\"> - </P></TD>" + "<TD WIDTH=\"4%\"><P id=\"butExterieur\" class=\"droite\" >" + scoreExterieur + "</P></TD>" + "<TD WIDTH=\"25%\"> <P id=\"faitMatchExterieur\" class=\"droite\">" + faitMatchExterieur + " </P></TD>" + "<TD WIDTH=\"20%\"><P id=\"logoNomExterieur\" class=\"droite\">" + logoNomExterieur + "</P></TD>");
	
	        }
	
	        }
	        else { }
	    });
	});

});
