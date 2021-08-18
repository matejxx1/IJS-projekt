indiPoverty=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},"Poverty","IgnoreCase",true)
        indiPoverty=[indiPoverty ;indi(i)];
    end
end

hungerBuzzword=["nourishment","food","stun","anemia","agriculture"];
indiHunger=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},hungerBuzzword,"IgnoreCase",true)
        indiHunger=[indiHunger ;indi(i)];
    end
end

healthBuzzword=["mortality","birth","infection","Tuberculosis","Malaria","Hepatitis","disease","cancer","diabetes","treatment","Alcohol","death","birth","health","pollution","medicine"];

indiHealth=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},healthBuzzword,"IgnoreCase",true)
        indiHealth=[indiHealth ;indi(i)];
    end
end

educationBuzzword=["reading","mathematics","education","Information","literacy ","numeracy","school","Scholarships","teachers"];
indiEducation=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},educationBuzzword,"IgnoreCase",true)
        indiEducation=[indiEducation ;indi(i)];
    end
end

equalityBuzzword=["equality","gender","women","men","partner","female","male","domestic","care","equal"];
indiEquality=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},equalityBuzzword,"IgnoreCase",true)
        indiEquality=[indiEquality ;indi(i)];
    end
end

waterBuzzword=["water","sanitation","drinking","drink","hygiene","freshwater"];

indiWater=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},waterBuzzword,"IgnoreCase",true)
        indiWater=[indiWater ;indi(i)];
    end
end

energyBuzzword=["energy","electricity","fuel","fuels"];
indiEnergy=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},energyBuzzword,"IgnoreCase",true)
        indiEnergy=[indiEnergy ;indi(i)];
    end
end

growthBuzzword=["GDP","capita","growth","employment","material","earnings","earn","employmnet","traning","education","unemployment","labour","injuries","tourism","jobs","job","finance","financial","trade"];

indiGrowth=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},growthBuzzword,"IgnoreCase",true)
        indiGrowth=[indiGrowth ;indi(i)];
    end
end

industryBuzzword=["road","transport","Manufacturing","employment","industry","industries","emission","economies","economy","Research","Development","Researchers","infrastructure","tech","Mobile"];

indiIndustry=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},industryBuzzword,"IgnoreCase",true)
        indiIndustry=[indiIndustry ;indi(i)];
    end
end

inequalityBuzzword=["Income","inequality"," inequalities"," inclusion","equal","discrimination","opportunitie","opportunity","discriminatory","discrimination","equality","Labour","market","voting","vote","migration","least","developing","developed","development","invest","investment","assistance","Remittance"];
indiInequality=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},inequalityBuzzword,"IgnoreCase",true)
        indiInequality=[indiInequality ;indi(i)];
    end
end

sustainabilityBuzzword=["Housing","living","slums","urban","sustainable","transport","urbanization","urban","heritage","disaster","disasters","waste","pollution","safe","risk","Sendai"];
indiSustainability=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},sustainabilityBuzzword,"IgnoreCase",true)
        indiSustainability=[indiSustainability ;indi(i)];
    end
end

productionBuzzword=["Sustainable","consumption","production","material","footprint","waste","loss","hazardous","recycle","recycling","fuel","Fossil"];
indiProduction=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},productionBuzzword,"IgnoreCase",true)
        indiProduction=[indiProduction ;indi(i)];
    end
end

climateBuzzword=["disaster","disasters","climate","natural","risk","Sendai","environment","environmental","green","developed","pollution"];
indiClimate=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},climateBuzzword,"IgnoreCase",true)
        indiClimate=[indiClimate ;indi(i)];
    end
end

underwaterBuzzword=["marine","pollution","ecosystems","ocean","acidification","fishing","fish","coast","fishing","sustainable","fishers","sea","environmental","environment"];
indiUnderwater=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},underwaterBuzzword,"IgnoreCase",true)
        indiUnderwater=[indiUnderwater ;indi(i)];
    end
end

abovewaterBuzzword=["forest","land","biodiversity","terrerstrial","ecosystems"," freshwater","deforestation","biomass","desertification","land","degradation","degrade","mountain","Red List","resources","wildlife","poaching","trafficking","species"];
indiAbovewater=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},abovewaterBuzzword,"IgnoreCase",true)
        indiAbovewater=[indiAbovewater ;indi(i)];
    end
end


peaceBuzzword=["violence","peace","homicide","death","terrorism","safety","safe","discipline","trafficking","victim","crime","prison","detainee","sentenc","bribery","satisfaction","expenditure","representation","inclusive","Birth","registration","killing","killings","journalist","media","information","right","discrimination"];
indiPeace=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},peaceBuzzword,"IgnoreCase",true)
        indiPeace=[indiPeace ;indi(i)];
    end
end

partnershipBuzzword=["Government","revenue","taxes","development","assistance","investment","remittance","remittances","debt","science","subscription","developing","internet","tariff","export","acroeconomic","develop","development","partnership","capacity","legislation","statistical","census","birth","registration","death"];
indiPartnership=[];
for i =1:size(indi,1)
    if contains(indikatorji{indi(i,1),1},partnershipBuzzword,"IgnoreCase",true)
        indiPartnership=[indiPartnership ;indi(i)];
    end
end