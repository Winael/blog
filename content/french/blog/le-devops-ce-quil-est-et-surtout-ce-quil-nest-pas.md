---
title: "Le Devops : Ce qu'il est... Et surtout ce qu'il n'est pas."
author: Winael
description: "A la découverte de DevOps."
date: 2020-02-22T15:42:52Z
image: "/images/blog/devops.jpeg"
tags: ["DevOps", "Agile", "Agilité"]
draft: true
---

Lorsque l’on fait une recherche sur les sites d’emploi avec le mot-clé DevOps,
il n’est pas rare de tomber sur ce genre d’annonce :

_“Afin de renforcer nos équipes techniques, nous recherchons notre futur(e)
Ingénieur(e) DevOps. Vous serez en charge de développer nos outils DevOps en
appliquant la méthodologie DevOps.”_

Bien évidemment, cette annonce est factice, mais elle est un condensé de ce que
l’on peut trouver comme offre d’emploi.

Face à cela, nous leur souhaitons bon courage et ce pour trois raisons :

- un **Ingénieur DevOps**, c’est comme une chimère ça n’existe pas,
- il n’y a pas d’**outils DevOps**,
- et encore moins de **Méthodologie DevOps**.

# Mais alors, le DevOps c’est quoi ?

Traditionnellement, pour des questions de coût et d’organisation, les
développeurs et les opérationnels (Administrateurs systèmes, exploitants…) sont
séparés. Les développeurs créent de la valeur, tandis que les opérationnels sont
des centres de coûts. Leurs objectifs sont donc aux antipodes.

Alors que l’objectif des **développeurs** est de créer un **produit toujours
plus innovant**, et apporter plus de valeur aux utilisateurs de ces solutions,
les **opérationnels**, eux, recherchent toujours **plus de stabilité** des
systèmes en limitant les coûts.

Cette situation de conflits d’intérêts crée ce qu’Andrew Shafer et Lee Thompson
appellent le _**Mur de la confusion**_. C’est ce mur qui est à l’origine de
nombreux conflits et de l’inefficacité de certaines structures. Combien
d’opérationnels se sont retrouvés frustrés lors d’une livraison ou d’une
migration litigieuse à l’instar de Patrick Dubois ?

Ce consultant en administration des systèmes a subi cette relation dégradée lors
d’une migration de données pour le gouvernement belge en 2007. Cette frustration
l’a motivé à assister à la présentation intitulée _“Agile Infrastructure”_ du
développeur Andrew Shafer lors de la conférence Agile de Toronto l’année
suivante. Malheureusement, personne n’y est venu. Pas même Andrew Shafer.

Fort heureusement, Patrick Dubois et Andrew Shafer ont tout de même pu échanger
à ce sujet, ce qui a abouti à la création du Groupe de l’Administration Système
Agile (_Agile System Administration Group_). Une année plus tard, eu lieu le
Velocity O’Reilly durant lequel John Allspaw et Paul Hammond présentèrent un
Retour d’Expérience sur la Coopération Dev et Ops chez Flickr.

![keep calm]

Malheureusement, Patrick Dubois ne put s’y rendre, et le fit savoir sur Twitter,
suite à quoi Paul Nasrat lui proposa d’organiser un Velocity Event en Belgique.
Ce sera chose faite quelques mois plus tard, en octobre 2009. Trouvant le nom
_Agile System Administration_ trop long, il décide de nommer son évènement :
Jours des Dev (Développeurs) et des Ops (Opérationnels = Administrateurs
Système), soit **DevOpsDays**. L’événement est un grand succès et les
discussions se poursuivent sur Twitter avec le Hashtag… **#DevOps**.

Oui oui, à la base, DevOps c’est juste un hashtag utilisé pour des discussions
Agiles entre les développeurs et les administrateurs système ayant une approche
Agile de leur métier. Pas un ensemble d’outils, pas un nouveau métier, ou une
méthode, juste des discussions.

De ces discussions, un véritable mouvement culturel émerge : **le Mouvement
DevOps**.

# Les 4 piliers initiaux du Mouvement DevOps

Le Mouvement DevOps repose sur 4 piliers initiaux, à savoir :

- La Culture (_Culture_),
- L’Automatisation (_Automation_),
- Les Mesures (_Measures_),
- Le Partage (_Share_).

On retrouve d’ailleurs souvent l’acronyme **CAMS** dans de nombreux ouvrages
traitant du Mouvement DevOps. Depuis peu, on parle aussi de **CALMS**, car un
cinquième pilier s’est ajouté : Le Lean Management (Gestion des ressources au
plus juste).

## Culture : Dave et Hops sont dans un bobsleigh…

Dave et son ami Hopper, dit Hops, sont champions de bobsleigh. L’un sans
l’autre, ils ne pourraient même pas atteindre leur objectif qu’est le
franchissement de la ligne d’arrivée. En effet, Dave est le pilote, c’est à lui
d’anticiper les virages et de changer de trajectoire. Sans lui, Hops ferait une
sortie de piste au premier virage. Hops, lui est le freineur. En effet, il ne
faut pas que le bobsleigh aille trop vite, sinon, il risque de perdre sa
stabilité et de sortir de piste dès le premier virage.

Cela a pris du temps, mais Dave et Hops ont pu apprendre à se connaître grâce à
leurs nombreux échecs. Ils ont développé une culture commune et surtout une
confiance qui leur permettent d’anticiper les actions de l’autre.

## Automatisation : Cétautomatix, le roi de la forge

En tant qu’Ops, Cétautomatix fournit des environnements pour ses collègues
développeurs. Afin de s’assurer de la qualité du livrable fourni par l’équipe,
il est décidé que le livrable puisse être testé sur 4 environnements.
L’environnement de développement accueillera toutes les modifications et devra
pouvoir être reconstruit facilement en cas de problème lors de l’étape de
développement. L’environnement de test permettra de faire tester l’application
et réaliser des benchmarks. L’environnement de recettage permettra aux clients
de tester la solution et de renvoyer du feedback à l’équipe de développement.
Le dernier environnement n’est autre que la plateforme de production.

Il doit donc mettre en place et maintenir toute l’infrastructure et déployer
l’application, faire tourner des tests, et être capable de revenir en arrière en
cas de problème.

Dans ces conditions, il est important d’automatiser un maximum de tâches, afin
de lui faire gagner du temps et éviter des erreurs humaines qui pourraient avoir
un impact négatif sur le travail collectif.

Cette automatisation permet aujourd’hui de mettre en place de véritables usines
logicielles, appelées forges, permettant de faire de l’intégration et de la
livraison continues. Lorsqu’une mise à jour est poussée par un dev dans
l’environnement de test de l’équipe DevOps de Cétautomatix, tout est testé
(code, sécurité, régression, benchmark, …), puis poussé dans l’environnement de
recette du client.

## Mesures : _« Qui ne mesure, jamais ne dure. »_ (Proverbe gaulois français)

En automatisant l’administration de son système d’information pour en faciliter
sa gestion, Cétautomatix a du le complexifier… beaucoup. Du coup, il est donc
devenu nécessaire de gérer ce système de façon plus agile, en ayant une approche
empirique. Et qui dit empirique, dit mesures. Puisqu’il s’agit d’un système
d’information et non d’un système humain, les retours se font au travers
d’indicateurs et de sondes. Cétautomatix va donc monitorer son système pour le
faire évoluer, en utilisant des sondes tant au niveau de l’infrastructure, ce
qui lui permettra d’avoir une gestion au plus juste de ses ressources (Lean),
qu’au niveau applicatifs.

Ces métriques serviront également aux développeurs pour améliorer leurs
logiciels, et même, de plus en plus au métier, puisqu’en rapprochant le résultat
de plusieurs remontées, de nouvelles informations pertinentes peuvent être mises
en valeur et produire de la valeur commerciale. C’est sur ce point que se base
le mouvement Big Data.

## Partage : La Culture est le partage de valeurs et de savoir-faire

_« En sociologie, la culture est définie de façon plus étroite comme « ce qui
est commun à un groupe d’individus » et comme « ce qui le soude », c’est-à-dire
ce qui est appris, transmis, produit et créé »_

**source :** _Wikipédia_

Le Mouvement DevOps est comme on l’a dit un mouvement culturel, ce qui signifie
que les valeurs qui soudent les équipes travaillant avec l’état d’esprit DevOps
sont apprises et transmises pour ensemble produire et créer des solutions. Cela
passe par un un échange de savoir qui a entre autre permis aux Ops de travailler
avec des systèmes de gestion de l’infrastructure versionné dans des fichiers
déclaratifs et variabilisés à l’image de méthodologies plutôt utilisées dans le
cadre du développement (on parle d’Infrastructure as Code), ou bien d’utiliser
des conteneurs pour livrer les composants d’infrastructure. Les équipes sont
aussi plus transparentes et les métriques récoltés sont partagés globalement
(métiers, développeurs, équipe de sécurité, etc…).

Le partage, c’est aussi le partage entre pairs, sous forme de retour
d’expérience (produit, manière de travailler ou de contourner les obstacles,
best practices). De nombreux événements permettent à tous les maillons de la
chaîne de production IT partageant la Culture DevOps, de se retrouver, et de
continuellement échanger pour progresser collectivement.

# Le DevOps en quelques mots

Si on devait résumer en quelques mots ce qu’est DevOps, c’est une interaction
forte entre les différents acteurs réactifs de la chaîne de production IT, afin
de livrer une solution fonctionnelle, de qualité et qui répond aux attentes des
clients et des utilisateurs. Bref, vous l’aurez compris, de l’Agilité orientée
Administration Système 😉

Retrouvez cet article en [epub] ou [pdf]

[keep calm]: /images/blog/keep-calms-and-think-devops.png "Keep CALMS and Think DevOps"
[epub]: /epub/le-devops-ce-quil-est-et-surtout-ce-quil-nest-pas.epub
[pdf]: /pdf/le-devops-ce-quil-est-et-surtout-ce-quil-nest-pas.pdf
