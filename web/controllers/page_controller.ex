defmodule Matrice.PageController do
  use Matrice.Web, :controller

  def index(conn, _params) do
    render conn, "index.html", title: 'Matrice', description: "MATRICE est un programme d’innovation, de formation et de production qui rassemble différentes écoles, universités, entreprises et institutions autour d’enjeux spécifiques, ambitieux et de nature à dessiner le futur intellectuel et professionnel d’un secteur."
  end

  def philosophie(conn, _params) do
    render conn, "philosophie.html", title: 'Philosophie', description: "Articulé autour de l’École 42 et de Creative Valley, MATRICE conçoit des programmes de formation et de production et rassemble écoles, universités, entreprises et institutions dans une démarche entrepreuneuriale transdisciplinaire pour produire des solutions numériques innovantes. De la création à l'incubation, elle concilie l’agilité des startups et la puissance de réflexion de la recherche fondamentale en valorisant le collectif."
  end

  def pedagogie(conn, _params) do
    render conn, "pedagogie.html", title: 'Pedagogie', description: "La pédagogie Matrice est basée sur l’équipe apprenante (Team Academy), le connectivisme et la pédagogie de la liberté. Elle forme les étudiants à l’innovation et à l’entrepreneuriat en développant intuition et leadership. Un coaching sur mesure favorise l’apprentissage par l’action, l’immersion et le dialogue, le travail en équipe, l'interdisciplinarité et l’autonomie.'"
  end

  def processus(conn, _params) do
    render conn, "processus.html", title: 'Processus', description: "Matrice forme des entrepreneurs dans une dimension créative, innovante, humaine, sociétale et technique. La formation permet l’assemblage d’un écosystème et la création d’une communauté mixte avec des rencontres entre étudiants et partenaires, des sprint créatif, la construction d’un collectif, la maturation d’idées, le passage du concept au produit, le prototypage et l’insertion dans l’emploi avec l’entrée en coopérative d’activité pour remporter les premiers marchés et favoriser la croissance."
  end

  def en_action(conn, _params) do
    render conn, "en_action.html", title: 'En action: Matrice', description: "test"
  end

  def en_action_autisme(conn, _params) do
    render conn, "en_action_autisme.html", title: 'En action: Autisme', description: "La Matrice Autisme Numérique permet aux étudiants de 42, du CRI, de l’école de Condé et d’E-artSup de travailler sur la manière dont le numérique peut contribuer à aider chercheurs et praticiens dans le traitement de l’autisme. (sous le patronage de l’Institut Pasteur et de l’Hôpital Robert Debré)"
  end

  def en_action_art(conn, _params) do
    render conn, "en_action_art.html", title: 'En action: Artis', description: "La Matrice Arts et Numérique  permet aux étudiants de 42, de l’ENSAD, de l’ENSAPC et de l’ICART, d’envisager de nouveaux modes de création, de diffusion et de médiation culturelles. (Sous l’égide de la Direction Générale de la Création Artistique)"
  end

  def en_action_cpa(conn, _params) do
    render conn, "en_action_cpa.html", title: 'En action: CPA', description: "La Matrice Compte personnel d’Activité permet aux étudiants de 42, de l’ENA et de Cesacom de travailler sur l’accès aux droits sociaux, dans la perspective du Compte Personnel d’Activité (CPA). (en collaboration avec le Ministère du Travail et la Caisse des Dépôts)."
  end

  def en_action_si(conn, _params) do
    render conn, "en_action_si.html", title: 'En action: SI', description: "La Matrice Systèmes Intelligents permet aux étudiants de 42 et de Strate Collège d’aider des laboratoires de recherche à rendre accessible des mathématiques appliquées et un ensemble de technologies complexes. (En partenariat avec le CEA)"
  end

  def matrice_et_vous(conn, _params) do
    render conn, "matrice_et_vous.html", title: 'Matrice et vous', description: "Le processus Matrice fonctionne grâce à la création d’un écosystème qui implique des partenaires institutionnels, des entreprises privées, des étudiants, des écoles, des universités, des experts métiers et une équipe pédagogique transversale. Matrice est un programme de co-construction, d’insertion dans l’emploi et un levier de transformation pour tous ses acteurs."
  end

  def en_un_clic(conn, _params) do
    render conn, "en_un_clic.html", title: 'En un clic', description: "L’équipe Matrice, dédiée et pluridisciplinaire, articulée autour de 42 et Créative Valley, accompagne les étudiants et les partenaires de manière transversale et permet de favoriser l’immersion et le dialogue de terrain en continu avec les acteurs sociaux, économiques et institutionnels. L’essentiel du programme de formation à l’entrepreneuriat et à l’innovation dans le dossier de presse."
  end
end
