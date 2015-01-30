//
//  StoryData.m
//  Labb2
//
//  Created by Johannes on 2015-01-27.
//  Copyright (c) 2015 Johannes. All rights reserved.
//

#import "JLIStoryData.h"

@implementation JLIStoryData


- (void) setIsFantasy:(BOOL)isFantasy {
    
    if (_isFantasy != isFantasy) {
        [self resetAll];
        _isFantasy = isFantasy;
    }
}

- (void) resetAll {
    self.protagonists = nil;
    self.antagonists = nil;
    self.objectsOfInterest = nil;
    self.areas = nil;
    self.beginnings = nil;
    self.sceenes = nil;
    self.endings = nil;
}

- (NSArray*) protagonists {
    if (!_protagonists) {
        
        if (self.isFantasy) {
            _protagonists = @[@"Flobbo", @"Jandalf", @"Lorromirr"];
        } else {
            _protagonists = @[@"Fluke", @"Ban Mono", @"V3T-GO"];
        }
    }
    return _protagonists;
}

- (NSArray*) antagonists {
    if (!_antagonists) {
        if (self.isFantasy) {
            _antagonists = @[@"Bauron", @"Far Uman", @"Slaug"];
        } else {
            _antagonists = @[@"Bart Wader", @"Kejsar Velvetine", @"General Prius"];
        }
    }
    return _antagonists;
}

- (NSArray*) monster {
    if (!_monster) {
        if (self.isFantasy) {
            _monster = @[@"Spindlar", @"Grumlingar", @"Trullsar"];
        } else {
            _monster = @[@"Kloner", @"Replikor", @"Pirater"];
        }
    }
    return _monster;
}

- (NSArray*) objectsOfInterest {
    if (!_objectsOfInterest) {
        if (self.isFantasy) {
            _objectsOfInterest = @[@"Armbandet", @"Den gyllene krukan", @"Kniven i äpplet"];
        } else {
            _objectsOfInterest = @[@"Laserkniven", @"Rymdskeppet Centerprice", @"Singulariteten"];
        }
    }
    return _objectsOfInterest;
}

- (NSArray*) areas {
    if (!_areas) {
        if (self.isFantasy) {
            _areas = @[@"Hordor", @"Bortom isväggen", @"Berget Elände"];
        } else {
            _areas = @[@"Galaxens utkant", @"Planet 34", @"Dödsmånen"];
        }
    }
    return _areas;
}

- (NSArray*) blood {
    if (!_blood) {
        
        _blood = @[@"*Splat!*", @"*KPOW!*", @"*SLAFS!*", @"*Crunch!*", @"*Blodet rinner*", @"*Klong!*", @"*Krack!*"];
        
    }
    return _blood;
}

- (NSArray*) beginnings {
    if (!_beginnings) {
        if (self.isFantasy) {
            _beginnings = @[
                            @"I ett land för länge sedan möter vi vår hjälte för första gången, &genus heter &protagonist och &genus lever ett enkelt liv bortom alla faror som finns i landet. Men snart skulle vår hjälte ge sig ut på sitt livs resa som skulle ta 'na till &area och tillbaka. Det hela började en ljus morgon när &protagonist tog sin morgonpromenad, ner till dammen med &objectOfInterest i. \n",
                            @"Det var en gång en liten figur som hette &protagonist. En kväll skulle &protagonist just gå hem när något glimmade till i en buske vid vägen. Vår figur lyfte på löven och till sin stora förvåning hängde där det som vi snart skall se var det mest åtråvärda föremålet i världen: &objectOfInterest. &protagonist stoppade ner den i sin väska. \n"];
        } else {
            _beginnings = @[
                            @"I en galax långt, långt borta hade det börjat röra på sig. &protagonist och det gäng som nu hållt ihop i åratal hade länge varit på jakt efter &objectOfInterest, och nu verkade det vara inom räckhåll \n",
                            @"I framtiden ville alla få tag i &objectOfInterest, både Imperiet och Allians-makterna runtom. Kriget drabbade alla så hårt att vår hjälte &protagonist hade bestämt sig för att återfinna den före alla andra och förstöra den innan kampen om föremålet förstörde fler världar och liv än vad den redan gjort. &objectOfInterest hade spårats till &area och en liten dalgång i den 3:e kvadranten. \n"];
        }
    }
    return _beginnings;
}

- (NSArray*) sceenes {
    if (!_sceenes) {
        if (_isFantasy) {
            _sceenes = @[
                         @"    Just som &genus hade satt sig att vila kände han hur &objectOfInterest började vibrera, och lysa starkt. Det skakade under marken och &protagonist ville kasta iväg &objectOfInterest men hur mycket &genus än ville så ville inte handen lyda. Istället flimrade det förbi bilder framför ögonen på människor i nöd, ett stort mörker som rullade in från väst och där i mitten av allt &blood; det hemska tornade &antagonist upp sig. - Jag måste till &area och visa den här för oraklen, tänkte &protagonist och slet sina ögon från föremålet. \n",
                         @"    Plötsligt var det fullt med &monster på vägen. &protagonist drog sin kniv och &blood &blood &blood så hade &genus snabbt sänkt &monsterna. - Det måste vara &objectOfInterest som drar till sig &monster, tänkte &protagonist. - Jag måste söka hjälp. \n",
                         @"    &protagonist bestämde sig för att ge skynda sig mot &area. I flera dagar gick resan obehindrat mot målet. - Hallå där nere! hördes det från kullen framför &protagonist. Det var en ovanligt liten grobilur som nyfiket stirrade på &protagonists väska. - Vad har &genus i packningen, tro?, sa den. - Ge dig iväg! svarade &protagonist och sparkade till grobiluren &blood. Men det hjälpte inte, i fortsättningen följde det lilla monstret efter på sparkfritt avstånd. \n",
                         @"    Varje natt drömde &protagonist hemska mardrömmar om &objectOfInterest, med &blood ryck vaknade &genus kallsvettig och rädd, och det kändes hela tiden som att &genus var iaktagen av små gula ögon i dunklet. Men varje gång &genus försökte fokusera så var det bara mörker. - Jag måste skynda mig till &area, tänkte &genus. \n" ];
        } else {
            _sceenes = @[
                         @"    Väl framme tog &protagonist sig en vilopaus. Då kände han hur marken började vibrera och lysa starkt. Det skakade till och ur en i närheten sken &objectOfInterest! Det flimrade förbi bilder framför ögonen på &protagonist, &blood folk skulle falla i nöd om &genus använde sig av objektet, det kunde &genus känna på sig, ett stort mörker rullade in själen på &protagonist och han kände &antagonists vilja att han skulle ge efter. - Jag måste ha det själv, tänkte &protagonist och kunde inte slita sina ögon från föremålet. \n",
                         @"    Plötsligt var det fullt med &monster i kvadranten. &protagonist drog sitt lasersvärd och &blood &blood &blood så hade &genus snabbt sänkt &monsterna. - Det måste vara &objectOfInterest som drar till sig &monster, tänkte &protagonist. - Vi måste ha hjälp. \n",
                         @"    Med det funna &objectOfInterest skyndade sig &protagonist från &area. I flera ljusår gick resan obehindrat mot galaxens centrum. - Hallå där uppe! hördes det från maskinrummet. Det var den ovanligt lilla chewok som &protagonist hittat på planet 3987 Beta. En fantastisk maskinist och lojal som ingen annat. - Vi är snart framme, svarade &protagonist. - Gör dig redo. \n",
                         @"    Varje natt drömde &protagonist hemska mardrömmar om &objectOfInterest, med &blood ryck vaknade &genus kallsvettig och rädd, och det kändes hela tiden som att &genus var iaktagen av små röda ögon i dunklet. Men varje gång &genus försökte fokusera så var det bara mörker. - Jag måste skynda mig till galaxens centrum, tänkte &genus. \n" ];
        }
    }
    return _sceenes;
}

- (NSArray*) endings {
    if (!_endings) {
        if (_isFantasy) {
            _endings = @[
                         @"    I &area fick &protagonist en kort vilopaus. De vise kunde inte enas om en bra lösning för att hantera &objectOfInterest och &area var översållad av &monster som blev mer aggresiva för varje timme. - Jag skall förstöra den, sa &protagonist. - NNNEEEEEEEEEJ!! kom plötsligt ett mullrande ljud. &blood Genom ingången och över vakterna brakar &antagonist in. - &objectOfInterest är min, bara min, MUHAHAHAHAHAHAHAHA! &blood. När &protagonist drog sina sista andetag i massakerns spår tänkte &genus för sig själv: Jag borde inte ha tagit den in i &area! Slut.",
                         @"    Den är för farlig att ta till oraklen, tänkte &protagonist. Jag måste förstöra den i &areas drakeld! Väl där väntade redan &antagonist. - Äntligen är &objectOfInterest min! MUHAHAHAH! I kampen som följde flög &protagonist och &antagonist runt i en våldsam dans &blood! &blood! &antagonist svingade sin iskalla lie strax över huvudet på &protagonist. &blood! När allt såg ut att vara över för vår hjälte, kniven var bruten i tu och &antagonist gjorde sig redo för det sista hugget tog &genus med en sista kraftansträngning ett fast tag om &antagonist och kastade sig ner i drakelden. Världen var räddad! Och bort mot en buske sprang en liten grobelur med &objectOfInterest." ];
        } else {
            _endings = @[
                         @"    I galaxens centrum fick &protagonist en kort vilopaus. De vise kunde inte enas om en bra lösning för att hantera &objectOfInterest och &area var översållad av &monster som blev mer aggresiva för varje timme. Från ingången kom plötsligt ett mullrande ljud. &blood Genom ingången och över vakterna brakar &antagonist in. - &objectOfInterest är min, bara min, MUHAHAHAHAHAHAHAHA! &blood. Nej den är min! sa &protagonist, jag hittade den! - Oh, ok sa &antagonist, jag trodde det var min. Och så blev alla glada, även &monsterna",
                         @"\n    Köp pro-versionen för det rafflande slutet på denna saga! &blood" ];
        }
    }
    return _endings;
}




@end
