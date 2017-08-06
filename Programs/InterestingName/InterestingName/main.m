#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *properNamesFile = @"/usr/share/dict/propernames";
        NSString *wordsFile = @"/usr/share/dict/words";
        
        // Read in a file as a huge string,
        // ignoring the possibility of an error
        NSString *nameString = [NSString stringWithContentsOfFile:properNamesFile
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        
        // Break it into an array of strings
        NSArray *names = [nameString componentsSeparatedByString:@"\n"];
        
        // Go through the array one string at a time
        for (NSString *n in names) {
            // Look for the string "aa" in a case-insensitive manner
            NSRange r = [n rangeOfString:@"AA" options:NSCaseInsensitiveSearch];
            
            // Was it found?
            if (r.location != NSNotFound) {
                NSLog(@"%@", n);
            }
        }
        
        // Find common names that are also regular words (lowercase)
        NSString *wordString = [NSString stringWithContentsOfFile:wordsFile
                                                         encoding:NSUTF8StringEncoding
                                                            error:NULL];
        NSArray *words = [wordString componentsSeparatedByString:@"\n"];
        
        for (NSString *w in words) {
            for (NSString *n in names) {
                if ([[n lowercaseString] isEqualToString:w] && ![w isEqualToString:@""]) {
                    NSLog(@"word: %@, name: %@", w, n);
                }
            }
        }
    }
    
    return 0;
}

/*

 2017-08-06 20:51:08.808706+0800 InterestingName[9724:7095412] Aaron
 2017-08-06 20:51:08.809110+0800 InterestingName[9724:7095412] Isaac
 2017-08-06 20:51:08.809205+0800 InterestingName[9724:7095412] Lievaart
 2017-08-06 20:51:08.809273+0800 InterestingName[9724:7095412] Maarten
 2017-08-06 20:51:08.809358+0800 InterestingName[9724:7095412] Raanan
 2017-08-06 20:51:08.809397+0800 InterestingName[9724:7095412] Saad
 2017-08-06 20:51:08.809426+0800 InterestingName[9724:7095412] Sjaak
 2017-08-06 20:51:09.316097+0800 InterestingName[9724:7095412] word: al, name: Al
 2017-08-06 20:51:09.324850+0800 InterestingName[9724:7095412] word: alan, name: Alan
 2017-08-06 20:51:09.361027+0800 InterestingName[9724:7095412] word: alf, name: Alf
 2017-08-06 20:51:09.379940+0800 InterestingName[9724:7095412] word: alison, name: Alison
 2017-08-06 20:51:09.388223+0800 InterestingName[9724:7095412] word: allan, name: Allan
 2017-08-06 20:51:09.491701+0800 InterestingName[9724:7095412] word: ami, name: Ami
 2017-08-06 20:51:09.502544+0800 InterestingName[9724:7095412] word: amir, name: Amir
 2017-08-06 20:51:09.547607+0800 InterestingName[9724:7095412] word: amy, name: Amy
 2017-08-06 20:51:09.677906+0800 InterestingName[9724:7095412] word: ann, name: Ann
 2017-08-06 20:51:09.678156+0800 InterestingName[9724:7095412] word: anna, name: Anna
 2017-08-06 20:51:10.075152+0800 InterestingName[9724:7095412] word: ariel, name: Ariel
 2017-08-06 20:51:10.109679+0800 InterestingName[9724:7095412] word: art, name: Art
 2017-08-06 20:51:10.556327+0800 InterestingName[9724:7095412] word: barney, name: Barney
 2017-08-06 20:51:10.565717+0800 InterestingName[9724:7095412] word: barrio, name: Barrio
 2017-08-06 20:51:10.566950+0800 InterestingName[9724:7095412] word: barry, name: Barry
 2017-08-06 20:51:10.568599+0800 InterestingName[9724:7095412] word: barton, name: Barton
 2017-08-06 20:51:10.736236+0800 InterestingName[9724:7095412] word: ben, name: Ben
 2017-08-06 20:51:10.748693+0800 InterestingName[9724:7095412] word: benjamin, name: Benjamin
 2017-08-06 20:51:10.805237+0800 InterestingName[9724:7095412] word: beth, name: Beth
 2017-08-06 20:51:10.813890+0800 InterestingName[9724:7095412] word: betty, name: Betty
 2017-08-06 20:51:10.892617+0800 InterestingName[9724:7095412] word: bill, name: Bill
 2017-08-06 20:51:10.896589+0800 InterestingName[9724:7095412] word: billy, name: Billy
 2017-08-06 20:51:10.981016+0800 InterestingName[9724:7095412] word: blair, name: Blair
 2017-08-06 20:51:10.981382+0800 InterestingName[9724:7095412] word: blake, name: Blake
 2017-08-06 20:51:11.055132+0800 InterestingName[9724:7095412] word: bob, name: Bob
 2017-08-06 20:51:11.056788+0800 InterestingName[9724:7095412] word: bobby, name: Bobby
 2017-08-06 20:51:11.182940+0800 InterestingName[9724:7095412] word: brad, name: Brad
 2017-08-06 20:51:11.207852+0800 InterestingName[9724:7095412] word: brandy, name: Brandy
 2017-08-06 20:51:11.229877+0800 InterestingName[9724:7095412] word: brent, name: Brent
 2017-08-06 20:51:11.230364+0800 InterestingName[9724:7095412] word: bret, name: Bret
 2017-08-06 20:51:11.231157+0800 InterestingName[9724:7095412] word: brett, name: Brett
 2017-08-06 20:51:11.309633+0800 InterestingName[9724:7095412] word: bucky, name: Bucky
 2017-08-06 20:51:11.310580+0800 InterestingName[9724:7095412] word: bud, name: Bud
 2017-08-06 20:51:11.376694+0800 InterestingName[9724:7095412] word: butler, name: Butler
 2017-08-06 20:51:11.614171+0800 InterestingName[9724:7095412] word: carl, name: Carl
 2017-08-06 20:51:11.622546+0800 InterestingName[9724:7095412] word: carol, name: Carol
 2017-08-06 20:51:11.623308+0800 InterestingName[9724:7095412] word: caroline, name: Caroline
 2017-08-06 20:51:11.641219+0800 InterestingName[9724:7095412] word: carter, name: Carter
 2017-08-06 20:51:11.651170+0800 InterestingName[9724:7095412] word: case, name: Case
 2017-08-06 20:51:11.740578+0800 InterestingName[9724:7095412] word: celeste, name: Celeste
 2017-08-06 20:51:11.941507+0800 InterestingName[9724:7095412] word: chip, name: Chip
 2017-08-06 20:51:12.054558+0800 InterestingName[9724:7095412] word: chuck, name: Chuck
 2017-08-06 20:51:12.145073+0800 InterestingName[9724:7095412] word: clark, name: Clark
 2017-08-06 20:51:12.157578+0800 InterestingName[9724:7095412] word: clay, name: Clay
 2017-08-06 20:51:12.167313+0800 InterestingName[9724:7095412] word: clem, name: Clem
 2017-08-06 20:51:12.174802+0800 InterestingName[9724:7095412] word: cliff, name: Cliff
 2017-08-06 20:51:12.327536+0800 InterestingName[9724:7095412] word: cole, name: Cole
 2017-08-06 20:51:12.333355+0800 InterestingName[9724:7095412] word: colin, name: Colin
 2017-08-06 20:51:12.345657+0800 InterestingName[9724:7095412] word: collin, name: Collin
 2017-08-06 20:51:13.005972+0800 InterestingName[9724:7095412] word: curt, name: Curt
 2017-08-06 20:51:13.077709+0800 InterestingName[9724:7095412] word: cyrus, name: Cyrus
 2017-08-06 20:51:13.118544+0800 InterestingName[9724:7095412] word: dale, name: Dale
 2017-08-06 20:51:13.121472+0800 InterestingName[9724:7095412] word: dalton, name: Dalton
 2017-08-06 20:51:13.130334+0800 InterestingName[9724:7095412] word: dan, name: Dan
 2017-08-06 20:51:13.168215+0800 InterestingName[9724:7095412] word: dawn, name: Dawn
 2017-08-06 20:51:13.182349+0800 InterestingName[9724:7095412] word: dean, name: Dean
 2017-08-06 20:51:13.187155+0800 InterestingName[9724:7095412] word: deb, name: Deb
 2017-08-06 20:51:13.538486+0800 InterestingName[9724:7095412] word: dick, name: Dick
 2017-08-06 20:51:13.555655+0800 InterestingName[9724:7095412] word: dieter, name: Dieter
 2017-08-06 20:51:13.662937+0800 InterestingName[9724:7095412] word: dirk, name: Dirk
 2017-08-06 20:51:13.894531+0800 InterestingName[9724:7095412] word: don, name: Don
 2017-08-06 20:51:13.898053+0800 InterestingName[9724:7095412] word: donna, name: Donna
 2017-08-06 20:51:13.916462+0800 InterestingName[9724:7095412] word: dory, name: Dory
 2017-08-06 20:51:13.975564+0800 InterestingName[9724:7095412] word: drew, name: Drew
 2017-08-06 20:51:14.016789+0800 InterestingName[9724:7095412] word: duke, name: Duke
 2017-08-06 20:51:14.073926+0800 InterestingName[9724:7095412] word: earl, name: Earl
 2017-08-06 20:51:14.117155+0800 InterestingName[9724:7095412] word: eddy, name: Eddy
 2017-08-06 20:51:14.167558+0800 InterestingName[9724:7095412] word: elaine, name: Elaine
 2017-08-06 20:51:14.255253+0800 InterestingName[9724:7095412] word: emma, name: Emma
 2017-08-06 20:51:14.536023+0800 InterestingName[9724:7095412] word: eric, name: Eric
 2017-08-06 20:51:14.905084+0800 InterestingName[9724:7095412] word: fay, name: Fay
 2017-08-06 20:51:15.099510+0800 InterestingName[9724:7095412] word: fletcher, name: Fletcher
 2017-08-06 20:51:15.316274+0800 InterestingName[9724:7095412] word: frank, name: Frank
 2017-08-06 20:51:15.319550+0800 InterestingName[9724:7095412] word: franklin, name: Franklin
 2017-08-06 20:51:15.449954+0800 InterestingName[9724:7095412] word: gale, name: Gale
 2017-08-06 20:51:15.572999+0800 InterestingName[9724:7095412] word: gene, name: Gene
 2017-08-06 20:51:15.661745+0800 InterestingName[9724:7095412] word: gill, name: Gill
 2017-08-06 20:51:15.670384+0800 InterestingName[9724:7095412] word: ginny, name: Ginny
 2017-08-06 20:51:15.697304+0800 InterestingName[9724:7095412] word: glen, name: Glen
 2017-08-06 20:51:15.821450+0800 InterestingName[9724:7095412] word: grace, name: Grace
 2017-08-06 20:51:15.835982+0800 InterestingName[9724:7095412] word: graham, name: Graham
 2017-08-06 20:51:15.851403+0800 InterestingName[9724:7095412] word: grant, name: Grant
 2017-08-06 20:51:15.894205+0800 InterestingName[9724:7095412] word: griff, name: Griff
 2017-08-06 20:51:15.973171+0800 InterestingName[9724:7095412] word: gunter, name: Gunter
 2017-08-06 20:51:15.984734+0800 InterestingName[9724:7095412] word: guy, name: Guy
 2017-08-06 20:51:16.003815+0800 InterestingName[9724:7095412] word: gypsy, name: Gypsy
 2017-08-06 20:51:16.082728+0800 InterestingName[9724:7095412] word: hank, name: Hank
 2017-08-06 20:51:16.116783+0800 InterestingName[9724:7095412] word: harry, name: Harry
 2017-08-06 20:51:16.147865+0800 InterestingName[9724:7095412] word: hazel, name: Hazel
 2017-08-06 20:51:16.166474+0800 InterestingName[9724:7095412] word: heather, name: Heather
 2017-08-06 20:51:16.179942+0800 InterestingName[9724:7095412] word: hector, name: Hector
 2017-08-06 20:51:16.280442+0800 InterestingName[9724:7095412] word: henry, name: Henry
 2017-08-06 20:51:16.296785+0800 InterestingName[9724:7095412] word: herb, name: Herb
 2017-08-06 20:51:16.455017+0800 InterestingName[9724:7095412] word: holly, name: Holly
 2017-08-06 20:51:16.541481+0800 InterestingName[9724:7095412] word: horst, name: Horst
 2017-08-06 20:51:17.577509+0800 InterestingName[9724:7095412] word: jack, name: Jack
 2017-08-06 20:51:17.594203+0800 InterestingName[9724:7095412] word: jane, name: Jane
 2017-08-06 20:51:17.605622+0800 InterestingName[9724:7095412] word: jarl, name: Jarl
 2017-08-06 20:51:17.613174+0800 InterestingName[9724:7095412] word: jay, name: Jay
 2017-08-06 20:51:17.614789+0800 InterestingName[9724:7095412] word: jean, name: Jean
 2017-08-06 20:51:17.617747+0800 InterestingName[9724:7095412] word: jeff, name: Jeff
 2017-08-06 20:51:17.628368+0800 InterestingName[9724:7095412] word: jerry, name: Jerry
 2017-08-06 20:51:17.629602+0800 InterestingName[9724:7095412] word: jess, name: Jess
 2017-08-06 20:51:17.640361+0800 InterestingName[9724:7095412] word: jimmy, name: Jimmy
 2017-08-06 20:51:17.643569+0800 InterestingName[9724:7095412] word: jinny, name: Jinny
 2017-08-06 20:51:17.648628+0800 InterestingName[9724:7095412] word: jock, name: Jock
 2017-08-06 20:51:17.651244+0800 InterestingName[9724:7095412] word: joe, name: Joe
 2017-08-06 20:51:17.661534+0800 InterestingName[9724:7095412] word: jordan, name: Jordan
 2017-08-06 20:51:17.663072+0800 InterestingName[9724:7095412] word: josh, name: Josh
 2017-08-06 20:51:17.675094+0800 InterestingName[9724:7095412] word: judge, name: Judge
 2017-08-06 20:51:17.689235+0800 InterestingName[9724:7095412] word: june, name: June
 2017-08-06 20:51:17.742877+0800 InterestingName[9724:7095412] word: kay, name: Kay
 2017-08-06 20:51:17.751782+0800 InterestingName[9724:7095412] word: kelly, name: Kelly
 2017-08-06 20:51:17.752984+0800 InterestingName[9724:7095412] word: kelvin, name: Kelvin
 2017-08-06 20:51:17.754125+0800 InterestingName[9724:7095412] word: ken, name: Ken
 2017-08-06 20:51:17.757490+0800 InterestingName[9724:7095412] word: kent, name: Kent
 2017-08-06 20:51:17.767249+0800 InterestingName[9724:7095412] word: kerry, name: Kerry
 2017-08-06 20:51:17.791674+0800 InterestingName[9724:7095412] word: kiki, name: Kiki
 2017-08-06 20:51:17.800683+0800 InterestingName[9724:7095412] word: kim, name: Kim
 2017-08-06 20:51:17.802507+0800 InterestingName[9724:7095412] word: kinch, name: Kinch
 2017-08-06 20:51:17.809462+0800 InterestingName[9724:7095412] word: king, name: King
 2017-08-06 20:51:17.817319+0800 InterestingName[9724:7095412] word: kirk, name: Kirk
 2017-08-06 20:51:17.821390+0800 InterestingName[9724:7095412] word: kit, name: Kit
 2017-08-06 20:51:17.825685+0800 InterestingName[9724:7095412] word: kitty, name: Kitty
 2017-08-06 20:51:17.832240+0800 InterestingName[9724:7095412] word: knapper, name: Knapper
 2017-08-06 20:51:17.847210+0800 InterestingName[9724:7095412] word: knut, name: Knut
 2017-08-06 20:51:17.882975+0800 InterestingName[9724:7095412] word: kusum, name: Kusum
 2017-08-06 20:51:17.885239+0800 InterestingName[9724:7095412] word: kyle, name: Kyle
 2017-08-06 20:51:17.949479+0800 InterestingName[9724:7095412] word: lance, name: Lance
 2017-08-06 20:51:17.975589+0800 InterestingName[9724:7095412] word: lar, name: Lar
 2017-08-06 20:51:17.982474+0800 InterestingName[9724:7095412] word: larry, name: Larry
 2017-08-06 20:51:18.010669+0800 InterestingName[9724:7095412] word: laura, name: Laura
 2017-08-06 20:51:18.011618+0800 InterestingName[9724:7095412] word: laurel, name: Laurel
 2017-08-06 20:51:18.024870+0800 InterestingName[9724:7095412] word: lea, name: Lea
 2017-08-06 20:51:18.047697+0800 InterestingName[9724:7095412] word: lee, name: Lee
 2017-08-06 20:51:18.127174+0800 InterestingName[9724:7095412] word: lewis, name: Lewis
 2017-08-06 20:51:18.133738+0800 InterestingName[9724:7095412] word: liber, name: Liber
 2017-08-06 20:51:18.190331+0800 InterestingName[9724:7095412] word: lin, name: Lin
 2017-08-06 20:51:18.192759+0800 InterestingName[9724:7095412] word: linder, name: Linder
 2017-08-06 20:51:18.231907+0800 InterestingName[9724:7095412] word: list, name: List
 2017-08-06 20:51:18.335251+0800 InterestingName[9724:7095412] word: lord, name: Lord
 2017-08-06 20:51:18.339313+0800 InterestingName[9724:7095412] word: lori, name: Lori
 2017-08-06 20:51:18.378264+0800 InterestingName[9724:7095412] word: luke, name: Luke
 2017-08-06 20:51:18.379831+0800 InterestingName[9724:7095412] word: lum, name: Lum
 2017-08-06 20:51:18.434793+0800 InterestingName[9724:7095412] word: mac, name: Mac
 2017-08-06 20:51:18.516444+0800 InterestingName[9724:7095412] word: major, name: Major
 2017-08-06 20:51:18.586901+0800 InterestingName[9724:7095412] word: manny, name: Manny
 2017-08-06 20:51:18.606762+0800 InterestingName[9724:7095412] word: marc, name: Marc
 2017-08-06 20:51:18.607424+0800 InterestingName[9724:7095412] word: marcel, name: Marcel
 2017-08-06 20:51:18.610345+0800 InterestingName[9724:7095412] word: marco, name: Marco
 2017-08-06 20:51:18.616105+0800 InterestingName[9724:7095412] word: marguerite, name: Marguerite
 2017-08-06 20:51:18.616601+0800 InterestingName[9724:7095412] word: maria, name: Maria
 2017-08-06 20:51:18.621868+0800 InterestingName[9724:7095412] word: mark, name: Mark
 2017-08-06 20:51:18.633712+0800 InterestingName[9724:7095412] word: marsh, name: Marsh
 2017-08-06 20:51:18.639428+0800 InterestingName[9724:7095412] word: martin, name: Martin
 2017-08-06 20:51:18.643926+0800 InterestingName[9724:7095412] word: mary, name: Mary
 2017-08-06 20:51:18.649667+0800 InterestingName[9724:7095412] word: mason, name: Mason
 2017-08-06 20:51:18.663379+0800 InterestingName[9724:7095412] word: mat, name: Mat
 2017-08-06 20:51:18.678655+0800 InterestingName[9724:7095412] word: matti, name: Matti
 2017-08-06 20:51:18.948109+0800 InterestingName[9724:7095412] word: mick, name: Mick
 2017-08-06 20:51:19.007615+0800 InterestingName[9724:7095412] word: mike, name: Mike
 2017-08-06 20:51:19.025730+0800 InterestingName[9724:7095412] word: milner, name: Milner
 2017-08-06 20:51:19.025981+0800 InterestingName[9724:7095412] word: milo, name: Milo
 2017-08-06 20:51:19.175645+0800 InterestingName[9724:7095412] word: molly, name: Molly
 2017-08-06 20:51:19.295804+0800 InterestingName[9724:7095412] word: morgan, name: Morgan
 2017-08-06 20:51:19.314942+0800 InterestingName[9724:7095412] word: morris, name: Morris
 2017-08-06 20:51:19.337508+0800 InterestingName[9724:7095412] word: mott, name: Mott
 2017-08-06 20:51:19.505050+0800 InterestingName[9724:7095412] word: myron, name: Myron
 2017-08-06 20:51:19.539247+0800 InterestingName[9724:7095412] word: nancy, name: Nancy
 2017-08-06 20:51:19.589200+0800 InterestingName[9724:7095412] word: neal, name: Neal
 2017-08-06 20:51:19.702682+0800 InterestingName[9724:7095412] word: nick, name: Nick
 2017-08-06 20:51:19.705680+0800 InterestingName[9724:7095412] word: nicolo, name: Nicolo
 2017-08-06 20:51:19.739384+0800 InterestingName[9724:7095412] word: no, name: No
 2017-08-06 20:51:20.010313+0800 InterestingName[9724:7095412] word: norm, name: Norm
 2017-08-06 20:51:20.010566+0800 InterestingName[9724:7095412] word: norma, name: Norma
 2017-08-06 20:51:20.229845+0800 InterestingName[9724:7095412] word: old, name: Old
 2017-08-06 20:51:20.807179+0800 InterestingName[9724:7095412] word: pablo, name: Pablo
 2017-08-06 20:51:20.827010+0800 InterestingName[9724:7095412] word: page, name: Page
 2017-08-06 20:51:20.904212+0800 InterestingName[9724:7095412] word: pam, name: Pam
 2017-08-06 20:51:20.908363+0800 InterestingName[9724:7095412] word: panacea, name: Panacea
 2017-08-06 20:51:20.921105+0800 InterestingName[9724:7095412] word: pandora, name: Pandora
 2017-08-06 20:51:21.061959+0800 InterestingName[9724:7095412] word: part, name: Part
 2017-08-06 20:51:21.090151+0800 InterestingName[9724:7095412] word: pat, name: Pat
 2017-08-06 20:51:21.107263+0800 InterestingName[9724:7095412] word: patrice, name: Patrice
 2017-08-06 20:51:21.115727+0800 InterestingName[9724:7095412] word: patty, name: Patty
 2017-08-06 20:51:21.171979+0800 InterestingName[9724:7095412] word: pedro, name: Pedro
 2017-08-06 20:51:21.179008+0800 InterestingName[9724:7095412] word: peggy, name: Peggy
 2017-08-06 20:51:21.219129+0800 InterestingName[9724:7095412] word: penny, name: Penny
 2017-08-06 20:51:21.249296+0800 InterestingName[9724:7095412] word: per, name: Per
 2017-08-06 20:51:21.355259+0800 InterestingName[9724:7095412] word: perry, name: Perry
 2017-08-06 20:51:21.385099+0800 InterestingName[9724:7095412] word: pete, name: Pete
 2017-08-06 20:51:21.385744+0800 InterestingName[9724:7095412] word: peter, name: Peter
 2017-08-06 20:51:21.612998+0800 InterestingName[9724:7095412] word: pia, name: Pia
 2017-08-06 20:51:21.638156+0800 InterestingName[9724:7095412] word: pierce, name: Pierce
 2017-08-06 20:51:21.640455+0800 InterestingName[9724:7095412] word: piet, name: Piet
 2017-08-06 20:51:21.651146+0800 InterestingName[9724:7095412] word: pilar, name: Pilar
 2017-08-06 20:51:21.660792+0800 InterestingName[9724:7095412] word: pilot, name: Pilot
 2017-08-06 20:51:21.683631+0800 InterestingName[9724:7095412] word: ping, name: Ping
 2017-08-06 20:51:21.791808+0800 InterestingName[9724:7095412] word: plastic, name: Plastic
 2017-08-06 20:51:21.892936+0800 InterestingName[9724:7095412] word: po, name: Po
 2017-08-06 20:51:22.416801+0800 InterestingName[9724:7095412] word: price, name: Price
 2017-08-06 20:51:23.098886+0800 InterestingName[9724:7095412] word: rainer, name: Rainer
 2017-08-06 20:51:23.102019+0800 InterestingName[9724:7095412] word: raj, name: Raj
 2017-08-06 20:51:23.102284+0800 InterestingName[9724:7095412] word: raja, name: Raja
 2017-08-06 20:51:23.105665+0800 InterestingName[9724:7095412] word: ralph, name: Ralph
 2017-08-06 20:51:23.106041+0800 InterestingName[9724:7095412] word: ram, name: Ram
 2017-08-06 20:51:23.119287+0800 InterestingName[9724:7095412] word: rand, name: Rand
 2017-08-06 20:51:23.121089+0800 InterestingName[9724:7095412] word: randy, name: Randy
 2017-08-06 20:51:23.155746+0800 InterestingName[9724:7095412] word: ray, name: Ray
 2017-08-06 20:51:23.169349+0800 InterestingName[9724:7095412] word: real, name: Real
 2017-08-06 20:51:23.614573+0800 InterestingName[9724:7095412] word: rex, name: Rex
 2017-08-06 20:51:23.664570+0800 InterestingName[9724:7095412] word: rich, name: Rich
 2017-08-06 20:51:23.667149+0800 InterestingName[9724:7095412] word: rick, name: Rick
 2017-08-06 20:51:23.715710+0800 InterestingName[9724:7095412] word: rob, name: Rob
 2017-08-06 20:51:23.716756+0800 InterestingName[9724:7095412] word: robbin, name: Robbin
 2017-08-06 20:51:23.718043+0800 InterestingName[9724:7095412] word: robin, name: Robin
 2017-08-06 20:51:23.726849+0800 InterestingName[9724:7095412] word: rod, name: Rod
 2017-08-06 20:51:23.727506+0800 InterestingName[9724:7095412] word: rodent, name: Rodent
 2017-08-06 20:51:23.729458+0800 InterestingName[9724:7095412] word: rodney, name: Rodney
 2017-08-06 20:51:23.733005+0800 InterestingName[9724:7095412] word: roger, name: Roger
 2017-08-06 20:51:23.733498+0800 InterestingName[9724:7095412] word: rogue, name: Rogue
 2017-08-06 20:51:23.753656+0800 InterestingName[9724:7095412] word: root, name: Root
 2017-08-06 20:51:23.775660+0800 InterestingName[9724:7095412] word: ross, name: Ross
 2017-08-06 20:51:23.858930+0800 InterestingName[9724:7095412] word: rusty, name: Rusty
 2017-08-06 20:51:23.860237+0800 InterestingName[9724:7095412] word: ruth, name: Ruth
 2017-08-06 20:51:23.916718+0800 InterestingName[9724:7095412] word: sal, name: Sal
 2017-08-06 20:51:23.930713+0800 InterestingName[9724:7095412] word: sally, name: Sally
 2017-08-06 20:51:23.949402+0800 InterestingName[9724:7095412] word: sam, name: Sam
 2017-08-06 20:51:23.968397+0800 InterestingName[9724:7095412] word: sandy, name: Sandy
 2017-08-06 20:51:23.975957+0800 InterestingName[9724:7095412] word: sanity, name: Sanity
 2017-08-06 20:51:24.190846+0800 InterestingName[9724:7095412] word: scot, name: Scot
 2017-08-06 20:51:24.466407+0800 InterestingName[9724:7095412] word: sergeant, name: Sergeant
 2017-08-06 20:51:24.500946+0800 InterestingName[9724:7095412] word: seth, name: Seth
 2017-08-06 20:51:24.521991+0800 InterestingName[9724:7095412] word: shadow, name: Shadow
 2017-08-06 20:51:24.553442+0800 InterestingName[9724:7095412] word: shatter, name: Shatter
 2017-08-06 20:51:24.556393+0800 InterestingName[9724:7095412] word: shaw, name: Shaw
 2017-08-06 20:51:24.600291+0800 InterestingName[9724:7095412] word: sho, name: Sho
 2017-08-06 20:51:24.754278+0800 InterestingName[9724:7095412] word: siping, name: Siping
 2017-08-06 20:51:24.755520+0800 InterestingName[9724:7095412] word: sir, name: Sir
 2017-08-06 20:51:24.775953+0800 InterestingName[9724:7095412] word: skeeter, name: Skeeter
 2017-08-06 20:51:24.793600+0800 InterestingName[9724:7095412] word: skip, name: Skip
 2017-08-06 20:51:25.008846+0800 InterestingName[9724:7095412] word: son, name: Son
 2017-08-06 20:51:25.014443+0800 InterestingName[9724:7095412] word: sonny, name: Sonny
 2017-08-06 20:51:25.033248+0800 InterestingName[9724:7095412] word: sorrel, name: Sorrel
 2017-08-06 20:51:25.054664+0800 InterestingName[9724:7095412] word: space, name: Space
 2017-08-06 20:51:25.100255+0800 InterestingName[9724:7095412] word: spencer, name: Spencer
 2017-08-06 20:51:25.146783+0800 InterestingName[9724:7095412] word: spike, name: Spike
 2017-08-06 20:51:25.248705+0800 InterestingName[9724:7095412] word: spy, name: Spy
 2017-08-06 20:51:25.284708+0800 InterestingName[9724:7095412] word: sri, name: Sri
 2017-08-06 20:51:25.294522+0800 InterestingName[9724:7095412] word: stagger, name: Stagger
 2017-08-06 20:51:25.354563+0800 InterestingName[9724:7095412] word: steen, name: Steen
 2017-08-06 20:51:25.398908+0800 InterestingName[9724:7095412] word: steven, name: Steven
 2017-08-06 20:51:25.730670+0800 InterestingName[9724:7095412] word: sue, name: Sue
 2017-08-06 20:51:25.994000+0800 InterestingName[9724:7095412] word: sylvan, name: Sylvan
 2017-08-06 20:51:26.083392+0800 InterestingName[9724:7095412] word: tad, name: Tad
 2017-08-06 20:51:26.091550+0800 InterestingName[9724:7095412] word: tai, name: Tai
 2017-08-06 20:51:26.098329+0800 InterestingName[9724:7095412] word: tait, name: Tait
 2017-08-06 20:51:26.101541+0800 InterestingName[9724:7095412] word: tal, name: Tal
 2017-08-06 20:51:26.122127+0800 InterestingName[9724:7095412] word: tammy, name: Tammy
 2017-08-06 20:51:26.141388+0800 InterestingName[9724:7095412] word: tao, name: Tao
 2017-08-06 20:51:26.228034+0800 InterestingName[9724:7095412] word: ted, name: Ted
 2017-08-06 20:51:26.332227+0800 InterestingName[9724:7095412] word: terry, name: Terry
 2017-08-06 20:51:26.398515+0800 InterestingName[9724:7095412] word: the, name: The
 2017-08-06 20:51:26.476556+0800 InterestingName[9724:7095412] word: think, name: Think
 2017-08-06 20:51:26.501745+0800 InterestingName[9724:7095412] word: those, name: Those
 2017-08-06 20:51:26.558222+0800 InterestingName[9724:7095412] word: ti, name: Ti
 2017-08-06 20:51:26.574989+0800 InterestingName[9724:7095412] word: tigger, name: Tigger
 2017-08-06 20:51:26.592513+0800 InterestingName[9724:7095412] word: timothy, name: Timothy
 2017-08-06 20:51:26.639018+0800 InterestingName[9724:7095412] word: toby, name: Toby
 2017-08-06 20:51:26.644082+0800 InterestingName[9724:7095412] word: toft, name: Toft
 2017-08-06 20:51:26.650393+0800 InterestingName[9724:7095412] word: tolerant, name: Tolerant
 2017-08-06 20:51:26.659253+0800 InterestingName[9724:7095412] word: tommy, name: Tommy
 2017-08-06 20:51:26.670569+0800 InterestingName[9724:7095412] word: tony, name: Tony
 2017-08-06 20:51:26.686037+0800 InterestingName[9724:7095412] word: tor, name: Tor
 2017-08-06 20:51:26.836626+0800 InterestingName[9724:7095412] word: travis, name: Travis
 2017-08-06 20:51:26.856472+0800 InterestingName[9724:7095412] word: trey, name: Trey
 2017-08-06 20:51:26.997640+0800 InterestingName[9724:7095412] word: troy, name: Troy
 2017-08-06 20:51:27.012802+0800 InterestingName[9724:7095412] word: trying, name: Trying
 2017-08-06 20:51:27.019683+0800 InterestingName[9724:7095412] word: tuan, name: Tuan
 2017-08-06 20:51:27.055593+0800 InterestingName[9724:7095412] word: tuna, name: Tuna
 2017-08-06 20:51:28.575176+0800 InterestingName[9724:7095412] word: van, name: Van
 2017-08-06 20:51:28.699842+0800 InterestingName[9724:7095412] word: vice, name: Vice
 2017-08-06 20:51:28.704185+0800 InterestingName[9724:7095412] word: victor, name: Victor
 2017-08-06 20:51:28.721216+0800 InterestingName[9724:7095412] word: vincent, name: Vincent
 2017-08-06 20:51:28.816874+0800 InterestingName[9724:7095412] word: wade, name: Wade
 2017-08-06 20:51:28.840768+0800 InterestingName[9724:7095412] word: walt, name: Walt
 2017-08-06 20:51:28.841022+0800 InterestingName[9724:7095412] word: walter, name: Walter
 2017-08-06 20:51:28.860652+0800 InterestingName[9724:7095412] word: warren, name: Warren
 2017-08-06 20:51:29.013961+0800 InterestingName[9724:7095412] word: will, name: Will
 2017-08-06 20:51:29.015568+0800 InterestingName[9724:7095412] word: willie, name: Willie
 2017-08-06 20:51:29.020066+0800 InterestingName[9724:7095412] word: win, name: Win
 2017-08-06 20:51:29.077161+0800 InterestingName[9724:7095412] word: wolf, name: Wolf
 2017-08-06 20:51:29.095037+0800 InterestingName[9724:7095412] word: woody, name: Woody
 Program ended with exit code: 0

*/
