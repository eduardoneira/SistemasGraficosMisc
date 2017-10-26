clear all
close all

points = [1 ,  0 ,   0 ; 
0.9975376725196838 ,  0.03128689229488373 ,   0 ; 
0.9901506900787354 ,  0.12514756917953493 ,   0 ; 
0.9876883625984192 ,  0.15643446147441864 ,   0 ; 
0.7608452439308167 ,  0.24721360206604004 ,   0 ; 
0.6472136378288269 ,  0.4702281951904297 ,   0 ; 
0.7071067811865476 ,  0.7071067811865475 ,   0 ; 
0.6832424737468455 ,  0.727488825465748 ,   0 ; 
0.6116495514277392 ,  0.7886349583033496 ,   0 ; 
0.5877852439880371 ,  0.80901700258255 ,   0 ; 
0.3631924092769623 ,  0.7128052115440369 ,   0 ; 
0.12514756619930267 ,  0.7901507019996643 ,   0 ; 
6.123233995736766e-17 ,  1 ,   0 ; 
-0.031286892294883684 ,  0.9975376725196838 ,   0 ; 
-0.12514756917953493 ,  0.9901506900787354 ,   0 ; 
-0.15643446147441864 ,  0.9876883625984192 ,   0 ; 
-0.24721360206604004 ,  0.7608452439308167 ,   0 ; 
-0.4702281951904297 ,  0.6472136378288269 ,   0 ; 
-0.7071067811865475 ,  0.7071067811865476 ,   0 ; 
-0.727488825465748 ,  0.6832424737468455 ,   0 ; 
-0.7886349583033496 ,  0.6116495514277392 ,   0 ; 
-0.80901700258255 ,  0.5877852439880371 ,   0 ; 
-0.7128052115440369 ,  0.3631924092769623 ,   0 ; 
-0.7901507019996643 ,  0.12514756619930267 ,   0 ; 
-1 ,  1.2246467991473532e-16 ,   0 ; 
-0.9975376725196838 ,  -0.031286892294883635 ,   0 ; 
-0.9901506900787354 ,  -0.1251475691795349 ,   0 ; 
-0.9876883625984192 ,  -0.15643446147441864 ,   0 ; 
-0.7608452439308167 ,  -0.24721360206604004 ,   0 ; 
-0.6472136378288269 ,  -0.4702281951904297 ,   0 ; 
-0.7071067811865477 ,  -0.7071067811865475 ,   0 ; 
-0.6832424737468455 ,  -0.727488825465748 ,   0 ; 
-0.6116495514277392 ,  -0.7886349583033496 ,   0 ; 
-0.5877852439880371 ,  -0.80901700258255 ,   0 ; 
-0.3631924092769623 ,  -0.7128052115440369 ,   0 ; 
-0.12514756619930267 ,  -0.7901507019996643 ,   0 ; 
-1.8369701987210297e-16 ,  -1 ,   0 ; 
0.031286892294883586 ,  -0.9975376725196838 ,   0 ; 
0.1251475691795349 ,  -0.9901506900787354 ,   0 ; 
0.15643446147441864 ,  -0.9876883625984192 ,   0 ; 
0.24721360206604004 ,  -0.7608452439308167 ,   0 ; 
0.4702281951904297 ,  -0.6472136378288269 ,   0 ; 
0.7071067811865475 ,  -0.7071067811865477 ,   0 ; 
0.727488825465748 ,  -0.6832424737468455 ,   0 ; 
0.7886349583033496 ,  -0.6116495514277392 ,   0 ; 
0.80901700258255 ,  -0.5877852439880371 ,   0 ; 
0.7128052115440369 ,  -0.3631924092769623 ,   0 ; 
0.7901507019996643 ,  -0.12514756619930267 ,   0 ; 
1 ,  0 ,   0 ];

points2 = [1 ,  0 ,   0 ; 
0.9975376725196838 ,  0.03128689229488373 ,   0 ; 
0.9901506900787354 ,  0.12514756917953493 ,   0 ; 
0.9876883625984192 ,  0.15643446147441864 ,   0 ; 
0.5706339478492737 ,  0.18541020154953003 ,   0 ; 
0.485410213470459 ,  0.35267114639282227 ,   0 ; 
0.7071067811865476 ,  0.7071067811865475 ,   0 ; 
0.6832424737468455 ,  0.727488825465748 ,   0 ; 
0.6116495514277392 ,  0.7886349583033496 ,   0 ; 
0.5877852439880371 ,  0.80901700258255 ,   0 ; 
0.2723943293094635 ,  0.5346039533615112 ,   0 ; 
0.0938606783747673 ,  0.5926130414009094 ,   0 ; 
6.123233995736766e-17 ,  1 ,   0 ; 
-0.031286892294883684 ,  0.9975376725196838 ,   0 ; 
-0.12514756917953493 ,  0.9901506900787354 ,   0 ; 
-0.15643446147441864 ,  0.9876883625984192 ,   0 ; 
-0.18541020154953003 ,  0.5706339478492737 ,   0 ; 
-0.35267114639282227 ,  0.485410213470459 ,   0 ; 
-0.7071067811865475 ,  0.7071067811865476 ,   0 ; 
-0.727488825465748 ,  0.6832424737468455 ,   0 ; 
-0.7886349583033496 ,  0.6116495514277392 ,   0 ; 
-0.80901700258255 ,  0.5877852439880371 ,   0 ; 
-0.5346039533615112 ,  0.2723943293094635 ,   0 ; 
-0.5926130414009094 ,  0.0938606783747673 ,   0 ; 
-1 ,  1.2246467991473532e-16 ,   0 ; 
-0.9975376725196838 ,  -0.031286892294883635 ,   0 ; 
-0.9901506900787354 ,  -0.1251475691795349 ,   0 ; 
-0.9876883625984192 ,  -0.15643446147441864 ,   0 ; 
-0.5706339478492737 ,  -0.18541020154953003 ,   0 ; 
-0.485410213470459 ,  -0.35267114639282227 ,   0 ; 
-0.7071067811865477 ,  -0.7071067811865475 ,   0 ; 
-0.6832424737468455 ,  -0.727488825465748 ,   0 ; 
-0.6116495514277392 ,  -0.7886349583033496 ,   0 ; 
-0.5877852439880371 ,  -0.80901700258255 ,   0 ; 
-0.2723943293094635 ,  -0.5346039533615112 ,   0 ; 
-0.0938606783747673 ,  -0.5926130414009094 ,   0 ; 
-1.8369701987210297e-16 ,  -1 ,   0 ; 
0.031286892294883586 ,  -0.9975376725196838 ,   0 ; 
0.1251475691795349 ,  -0.9901506900787354 ,   0 ; 
0.15643446147441864 ,  -0.9876883625984192 ,   0 ; 
0.18541020154953003 ,  -0.5706339478492737 ,   0 ; 
0.35267114639282227 ,  -0.485410213470459 ,   0 ; 
0.7071067811865475 ,  -0.7071067811865477 ,   0 ; 
0.727488825465748 ,  -0.6832424737468455 ,   0 ; 
0.7886349583033496 ,  -0.6116495514277392 ,   0 ; 
0.80901700258255 ,  -0.5877852439880371 ,   0 ; 
0.5346039533615112 ,  -0.2723943293094635 ,   0 ; 
0.5926130414009094 ,  -0.0938606783747673 ,   0 ; 
1 ,  0 ,   0 ];


discret = [1 ,  0 ; 
0.9971762895584106 ,  0.03587859496474266 ; 
0.9933744668960571 ,  0.08418582379817963 ; 
0.9897055625915527 ,  0.13080382347106934 ; 
0.9876883625984192 ,  0.15643446147441864 ; 0.9470840096473694 ,  0.1746813803911209 ; 
0.9091399312019348 ,  0.19577106833457947 ; 
0.873940646648407 ,  0.2195376604795456 ; 
0.8415706157684326 ,  0.24581532180309296 ; 
0.8121143579483032 ,  0.2744382321834564 ; 
0.7856563925743103 ,  0.3052405118942261 ; 
0.7622811794281006 ,  0.3380563259124756 ; 
0.7420732378959656 ,  0.3727198541164398 ; 
0.7251170873641968 ,  0.40906524658203125 ; 
0.7114971876144409 ,  0.44692665338516235 ; 
0.7012981176376343 ,  0.4861382246017456 ; 
0.6946042776107788 ,  0.5265341401100159 ; 
0.6915002465248108 ,  0.5679485201835632 ; 
0.692070484161377 ,  0.6102155447006226 ; 
0.6963995695114136 ,  0.6531693935394287 ; 
0.7045718431472778 ,  0.6966441869735718 ; 
0.7071067690849304 ,  0.7071067690849304 ; 0.6797401309013367 ,  0.7304801344871521 ; 
0.6428934335708618 ,  0.7619501352310181 ; 
0.6073352098464966 ,  0.7923197746276855 ; 
0.5877852439880371 ,  0.80901700258255 ; 0.5461711287498474 ,  0.7932078838348389 ; 
0.504427969455719 ,  0.7812900543212891 ; 
0.4627327620983124 ,  0.7732059359550476 ; 
0.42126259207725525 ,  0.7688979506492615 ; 
0.38019442558288574 ,  0.768308699131012 ; 
0.33970528841018677 ,  0.7713805437088013 ; 
0.2999722361564636 ,  0.7780560851097107 ; 
0.26117226481437683 ,  0.7882777452468872 ; 
0.2234823852777481 ,  0.8019880056381226 ; 
0.18707962334156036 ,  0.8191293478012085 ; 
0.1521410048007965 ,  0.8396442532539368 ; 
0.11884354054927826 ,  0.8634752631187439 ; 
0.08736426383256912 ,  0.8905647993087769 ; 
0.057880181819200516 ,  0.9208552837371826 ; 
0.03056832030415535 ,  0.9542893767356873 ; 
0.005605699028819799 ,  0.9908093810081482 ; 
6.123234262925839e-17 ,  1 ; -0.03587859496474266 ,  0.9971762895584106 ; 
-0.08418582379817963 ,  0.9933744668960571 ; 
-0.13080382347106934 ,  0.9897055625915527 ; 
-0.15643446147441864 ,  0.9876883625984192 ; -0.1746813803911209 ,  0.9470840096473694 ; 
-0.19577106833457947 ,  0.9091399312019348 ; 
-0.2195376604795456 ,  0.873940646648407 ; 
-0.24581532180309296 ,  0.8415706157684326 ; 
-0.2744382321834564 ,  0.8121143579483032 ; 
-0.3052405118942261 ,  0.7856563925743103 ; 
-0.3380563259124756 ,  0.7622811794281006 ; 
-0.3727198541164398 ,  0.7420732378959656 ; 
-0.40906524658203125 ,  0.7251170873641968 ; 
-0.44692665338516235 ,  0.7114971876144409 ; 
-0.4861382246017456 ,  0.7012981176376343 ; 
-0.5265341401100159 ,  0.6946042776107788 ; 
-0.5679485201835632 ,  0.6915002465248108 ; 
-0.6102155447006226 ,  0.692070484161377 ; 
-0.6531693935394287 ,  0.6963995695114136 ; 
-0.6966441869735718 ,  0.7045718431472778 ; 
-0.7071067690849304 ,  0.7071067690849304 ; -0.7304801344871521 ,  0.6797401309013367 ; 
-0.7619501352310181 ,  0.6428934335708618 ; 
-0.7923197746276855 ,  0.6073352098464966 ; 
-0.80901700258255 ,  0.5877852439880371 ; -0.7932078838348389 ,  0.5461711287498474 ; 
-0.7812900543212891 ,  0.504427969455719 ; 
-0.7732059359550476 ,  0.4627327620983124 ; 
-0.7688979506492615 ,  0.42126259207725525 ; 
-0.768308699131012 ,  0.38019442558288574 ; 
-0.7713805437088013 ,  0.33970528841018677 ; 
-0.7780560851097107 ,  0.2999722361564636 ; 
-0.7882777452468872 ,  0.26117226481437683 ; 
-0.8019880056381226 ,  0.2234823852777481 ; 
-0.8191293478012085 ,  0.18707962334156036 ; 
-0.8396442532539368 ,  0.1521410048007965 ; 
-0.8634752631187439 ,  0.11884354054927826 ; 
-0.8905647993087769 ,  0.08736426383256912 ; 
-0.9208552837371826 ,  0.057880181819200516 ; 
-0.9542893767356873 ,  0.03056832030415535 ; 
-0.9908093810081482 ,  0.005605699028819799 ; 
-1 ,  1.2246468525851679e-16 ; -0.9971762895584106 ,  -0.03587859496474266 ; 
-0.9933744668960571 ,  -0.08418582379817963 ; 
-0.9897055625915527 ,  -0.13080382347106934 ; 
-0.9876883625984192 ,  -0.15643446147441864 ; -0.9470840096473694 ,  -0.1746813803911209 ; 
-0.9091399312019348 ,  -0.19577106833457947 ; 
-0.873940646648407 ,  -0.2195376604795456 ; 
-0.8415706157684326 ,  -0.24581532180309296 ; 
-0.8121143579483032 ,  -0.2744382321834564 ; 
-0.7856563925743103 ,  -0.3052405118942261 ; 
-0.7622811794281006 ,  -0.3380563259124756 ; 
-0.7420732378959656 ,  -0.3727198541164398 ; 
-0.7251170873641968 ,  -0.40906524658203125 ; 
-0.7114971876144409 ,  -0.44692665338516235 ; 
-0.7012981176376343 ,  -0.4861382246017456 ; 
-0.6946042776107788 ,  -0.5265341401100159 ; 
-0.6915002465248108 ,  -0.5679485201835632 ; 
-0.692070484161377 ,  -0.6102155447006226 ; 
-0.6963995695114136 ,  -0.6531693935394287 ; 
-0.7045718431472778 ,  -0.6966441869735718 ; 
-0.7071067690849304 ,  -0.7071067690849304 ; -0.6797401309013367 ,  -0.7304801344871521 ; 
-0.6428934335708618 ,  -0.7619501352310181 ; 
-0.6073352098464966 ,  -0.7923197746276855 ; 
-0.5877852439880371 ,  -0.80901700258255 ; -0.5461711287498474 ,  -0.7932078838348389 ; 
-0.504427969455719 ,  -0.7812900543212891 ; 
-0.4627327620983124 ,  -0.7732059359550476 ; 
-0.42126259207725525 ,  -0.7688979506492615 ; 
-0.38019442558288574 ,  -0.768308699131012 ; 
-0.33970528841018677 ,  -0.7713805437088013 ; 
-0.2999722361564636 ,  -0.7780560851097107 ; 
-0.26117226481437683 ,  -0.7882777452468872 ; 
-0.2234823852777481 ,  -0.8019880056381226 ; 
-0.18707962334156036 ,  -0.8191293478012085 ; 
-0.1521410048007965 ,  -0.8396442532539368 ; 
-0.11884354054927826 ,  -0.8634752631187439 ; 
-0.08736426383256912 ,  -0.8905647993087769 ; 
-0.057880181819200516 ,  -0.9208552837371826 ; 
-0.03056832030415535 ,  -0.9542893767356873 ; 
-0.005605699028819799 ,  -0.9908093810081482 ; 
-1.8369701465288538e-16 ,  -1 ; 0.03587859496474266 ,  -0.9971762895584106 ; 
0.08418582379817963 ,  -0.9933744668960571 ; 
0.13080382347106934 ,  -0.9897055625915527 ; 
0.15643446147441864 ,  -0.9876883625984192 ; 0.1746813803911209 ,  -0.9470840096473694 ; 
0.19577106833457947 ,  -0.9091399312019348 ; 
0.2195376604795456 ,  -0.873940646648407 ; 
0.24581532180309296 ,  -0.8415706157684326 ; 
0.2744382321834564 ,  -0.8121143579483032 ; 
0.3052405118942261 ,  -0.7856563925743103 ; 
0.3380563259124756 ,  -0.7622811794281006 ; 
0.3727198541164398 ,  -0.7420732378959656 ; 
0.40906524658203125 ,  -0.7251170873641968 ; 
0.44692665338516235 ,  -0.7114971876144409 ; 
0.4861382246017456 ,  -0.7012981176376343 ; 
0.5265341401100159 ,  -0.6946042776107788 ; 
0.5679485201835632 ,  -0.6915002465248108 ; 
0.6102155447006226 ,  -0.692070484161377 ; 
0.6531693935394287 ,  -0.6963995695114136 ; 
0.6966441869735718 ,  -0.7045718431472778 ; 
0.7071067690849304 ,  -0.7071067690849304 ; 0.7304801344871521 ,  -0.6797401309013367 ; 
0.7619501352310181 ,  -0.6428934335708618 ; 
0.7923197746276855 ,  -0.6073352098464966 ; 
0.80901700258255 ,  -0.5877852439880371 ; 0.7932078838348389 ,  -0.5461711287498474 ; 
0.7812900543212891 ,  -0.504427969455719 ; 
0.7732059359550476 ,  -0.4627327620983124 ; 
0.7688979506492615 ,  -0.42126259207725525 ; 
0.768308699131012 ,  -0.38019442558288574 ; 
0.7713805437088013 ,  -0.33970528841018677 ; 
0.7780560851097107 ,  -0.2999722361564636 ; 
0.7882777452468872 ,  -0.26117226481437683 ; 
0.8019880056381226 ,  -0.2234823852777481 ; 
0.8191293478012085 ,  -0.18707962334156036 ; 
0.8396442532539368 ,  -0.1521410048007965 ; 
0.8634752631187439 ,  -0.11884354054927826 ; 
0.8905647993087769 ,  -0.08736426383256912 ; 
0.9208552837371826 ,  -0.057880181819200516 ; 
0.9542893767356873 ,  -0.03056832030415535 ; 
0.9908093810081482 ,  -0.005605699028819799 ; 
1 ,  0 ];

discret2 = [1 ,  0 ; 
0.9964285492897034 ,  0.045379623770713806 ; 
0.9917669296264648 ,  0.10461118072271347 ; 
0.9879747033119202 ,  0.1527964472770691 ; 
0.9876883625984192 ,  0.15643446147441864 ; 0.9170849919319153 ,  0.16304680705070496 ; 
0.8534320592880249 ,  0.1726294755935669 ; 
0.7966985106468201 ,  0.1852433830499649 ; 
0.7468532919883728 ,  0.20094943046569824 ; 
0.7038654088973999 ,  0.21980853378772736 ; 
0.6677038669586182 ,  0.2418815940618515 ; 
0.6383375525474548 ,  0.26722952723503113 ; 
0.6157354116439819 ,  0.2959132492542267 ; 
0.599866509437561 ,  0.3279936611652374 ; 
0.5906997323036194 ,  0.3635316789150238 ; 
0.5882041454315186 ,  0.4025881886482239 ; 
0.592348575592041 ,  0.4452241361141205 ; 
0.6031020283699036 ,  0.4915004074573517 ; 
0.620433509349823 ,  0.5414779186248779 ; 
0.6443120241165161 ,  0.5952175855636597 ; 
0.6747063994407654 ,  0.652780294418335 ; 
0.7071067690849304 ,  0.7071067690849304 ; 0.6724931597709656 ,  0.7366696000099182 ; 
0.6273138523101807 ,  0.7752563953399658 ; 
0.5905601978302002 ,  0.806647002696991 ; 
0.5877852439880371 ,  0.80901700258255 ; 0.5331854820251465 ,  0.7637684941291809 ; 
0.48140010237693787 ,  0.7255350351333618 ; 
0.4323640465736389 ,  0.6943377256393433 ; 
0.38601231575012207 ,  0.6701977252960205 ; 
0.34227991104125977 ,  0.653136134147644 ; 
0.30110180377960205 ,  0.6431740522384644 ; 
0.262412965297699 ,  0.6403326392173767 ; 
0.22614842653274536 ,  0.6446329951286316 ; 
0.19224312901496887 ,  0.6560962200164795 ; 
0.16063208878040314 ,  0.6747435331344604 ; 
0.131250262260437 ,  0.7005959749221802 ; 
0.10403265804052353 ,  0.7336747050285339 ; 
0.07891425490379333 ,  0.7740008234977722 ; 
0.05583004280924797 ,  0.8215954899787903 ; 
0.03471499681472778 ,  0.8764798045158386 ; 
0.015504109673202038 ,  0.9386748671531677 ; 
6.123234262925839e-17 ,  1 ; -0.045379623770713806 ,  0.9964285492897034 ; 
-0.10461118072271347 ,  0.9917669296264648 ; 
-0.1527964472770691 ,  0.9879747033119202 ; 
-0.15643446147441864 ,  0.9876883625984192 ; -0.16304680705070496 ,  0.9170849919319153 ; 
-0.1726294755935669 ,  0.8534320592880249 ; 
-0.1852433830499649 ,  0.7966985106468201 ; 
-0.20094943046569824 ,  0.7468532919883728 ; 
-0.21980853378772736 ,  0.7038654088973999 ; 
-0.2418815940618515 ,  0.6677038669586182 ; 
-0.26722952723503113 ,  0.6383375525474548 ; 
-0.2959132492542267 ,  0.6157354116439819 ; 
-0.3279936611652374 ,  0.599866509437561 ; 
-0.3635316789150238 ,  0.5906997323036194 ; 
-0.4025881886482239 ,  0.5882041454315186 ; 
-0.4452241361141205 ,  0.592348575592041 ; 
-0.4915004074573517 ,  0.6031020283699036 ; 
-0.5414779186248779 ,  0.620433509349823 ; 
-0.5952175855636597 ,  0.6443120241165161 ; 
-0.652780294418335 ,  0.6747063994407654 ; 
-0.7071067690849304 ,  0.7071067690849304 ; -0.7366696000099182 ,  0.6724931597709656 ; 
-0.7752563953399658 ,  0.6273138523101807 ; 
-0.806647002696991 ,  0.5905601978302002 ; 
-0.80901700258255 ,  0.5877852439880371 ; -0.7637684941291809 ,  0.5331854820251465 ; 
-0.7255350351333618 ,  0.48140010237693787 ; 
-0.6943377256393433 ,  0.4323640465736389 ; 
-0.6701977252960205 ,  0.38601231575012207 ; 
-0.653136134147644 ,  0.34227991104125977 ; 
-0.6431740522384644 ,  0.30110180377960205 ; 
-0.6403326392173767 ,  0.262412965297699 ; 
-0.6446329951286316 ,  0.22614842653274536 ; 
-0.6560962200164795 ,  0.19224312901496887 ; 
-0.6747435331344604 ,  0.16063208878040314 ; 
-0.7005959749221802 ,  0.131250262260437 ; 
-0.7336747050285339 ,  0.10403265804052353 ; 
-0.7740008234977722 ,  0.07891425490379333 ; 
-0.8215954899787903 ,  0.05583004280924797 ; 
-0.8764798045158386 ,  0.03471499681472778 ; 
-0.9386748671531677 ,  0.015504109673202038 ; 
-1 ,  1.2246468525851679e-16 ; -0.9964285492897034 ,  -0.045379623770713806 ; 
-0.9917669296264648 ,  -0.10461118072271347 ; 
-0.9879747033119202 ,  -0.1527964472770691 ; 
-0.9876883625984192 ,  -0.15643446147441864 ; -0.9170849919319153 ,  -0.16304680705070496 ; 
-0.8534320592880249 ,  -0.1726294755935669 ; 
-0.7966985106468201 ,  -0.1852433830499649 ; 
-0.7468532919883728 ,  -0.20094943046569824 ; 
-0.7038654088973999 ,  -0.21980853378772736 ; 
-0.6677038669586182 ,  -0.2418815940618515 ; 
-0.6383375525474548 ,  -0.26722952723503113 ; 
-0.6157354116439819 ,  -0.2959132492542267 ; 
-0.599866509437561 ,  -0.3279936611652374 ; 
-0.5906997323036194 ,  -0.3635316789150238 ; 
-0.5882041454315186 ,  -0.4025881886482239 ; 
-0.592348575592041 ,  -0.4452241361141205 ; 
-0.6031020283699036 ,  -0.4915004074573517 ; 
-0.620433509349823 ,  -0.5414779186248779 ; 
-0.6443120241165161 ,  -0.5952175855636597 ; 
-0.6747063994407654 ,  -0.652780294418335 ; 
-0.7071067690849304 ,  -0.7071067690849304 ; -0.6724931597709656 ,  -0.7366696000099182 ; 
-0.6273138523101807 ,  -0.7752563953399658 ; 
-0.5905601978302002 ,  -0.806647002696991 ; 
-0.5877852439880371 ,  -0.80901700258255 ; -0.5331854820251465 ,  -0.7637684941291809 ; 
-0.48140010237693787 ,  -0.7255350351333618 ; 
-0.4323640465736389 ,  -0.6943377256393433 ; 
-0.38601231575012207 ,  -0.6701977252960205 ; 
-0.34227991104125977 ,  -0.653136134147644 ; 
-0.30110180377960205 ,  -0.6431740522384644 ; 
-0.262412965297699 ,  -0.6403326392173767 ; 
-0.22614842653274536 ,  -0.6446329951286316 ; 
-0.19224312901496887 ,  -0.6560962200164795 ; 
-0.16063208878040314 ,  -0.6747435331344604 ; 
-0.131250262260437 ,  -0.7005959749221802 ; 
-0.10403265804052353 ,  -0.7336747050285339 ; 
-0.07891425490379333 ,  -0.7740008234977722 ; 
-0.05583004280924797 ,  -0.8215954899787903 ; 
-0.03471499681472778 ,  -0.8764798045158386 ; 
-0.015504109673202038 ,  -0.9386748671531677 ; 
-1.8369701465288538e-16 ,  -1 ; 0.045379623770713806 ,  -0.9964285492897034 ; 
0.10461118072271347 ,  -0.9917669296264648 ; 
0.1527964472770691 ,  -0.9879747033119202 ; 
0.15643446147441864 ,  -0.9876883625984192 ; 0.16304680705070496 ,  -0.9170849919319153 ; 
0.1726294755935669 ,  -0.8534320592880249 ; 
0.1852433830499649 ,  -0.7966985106468201 ; 
0.20094943046569824 ,  -0.7468532919883728 ; 
0.21980853378772736 ,  -0.7038654088973999 ; 
0.2418815940618515 ,  -0.6677038669586182 ; 
0.26722952723503113 ,  -0.6383375525474548 ; 
0.2959132492542267 ,  -0.6157354116439819 ; 
0.3279936611652374 ,  -0.599866509437561 ; 
0.3635316789150238 ,  -0.5906997323036194 ; 
0.4025881886482239 ,  -0.5882041454315186 ; 
0.4452241361141205 ,  -0.592348575592041 ; 
0.4915004074573517 ,  -0.6031020283699036 ; 
0.5414779186248779 ,  -0.620433509349823 ; 
0.5952175855636597 ,  -0.6443120241165161 ; 
0.652780294418335 ,  -0.6747063994407654 ; 
0.7071067690849304 ,  -0.7071067690849304 ; 0.7366696000099182 ,  -0.6724931597709656 ; 
0.7752563953399658 ,  -0.6273138523101807 ; 
0.806647002696991 ,  -0.5905601978302002 ; 
0.80901700258255 ,  -0.5877852439880371 ; 0.7637684941291809 ,  -0.5331854820251465 ; 
0.7255350351333618 ,  -0.48140010237693787 ; 
0.6943377256393433 ,  -0.4323640465736389 ; 
0.6701977252960205 ,  -0.38601231575012207 ; 
0.653136134147644 ,  -0.34227991104125977 ; 
0.6431740522384644 ,  -0.30110180377960205 ; 
0.6403326392173767 ,  -0.262412965297699 ; 
0.6446329951286316 ,  -0.22614842653274536 ; 
0.6560962200164795 ,  -0.19224312901496887 ; 
0.6747435331344604 ,  -0.16063208878040314 ; 
0.7005959749221802 ,  -0.131250262260437 ; 
0.7336747050285339 ,  -0.10403265804052353 ; 
0.7740008234977722 ,  -0.07891425490379333 ; 
0.8215954899787903 ,  -0.05583004280924797 ; 
0.8764798045158386 ,  -0.03471499681472778 ; 
0.9386748671531677 ,  -0.015504109673202038 ; 
1 ,  0 ];

figure, hold on
% plot(points(:,1), points(:,2), 'or')
plot(points2(:,1), points2(:,2), 'or')
% plot(discret(:,1), discret(:,2), 'b')
plot(discret2(:,1), discret2(:,2), 'b')