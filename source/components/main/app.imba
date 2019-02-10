import './app.scss'

tag Layout
	def render
		<self>
			<header>
				<content[:header]>
			<main>
				<h1> "KEEP CLICKIN\'"
				<content>
			<footer>	
				<content[:footer]>

export tag App
	var state = false

	def render
		<self :tap=(do state=!state)>
			<Layout>
				if state
					<h1 for='footer'> '😂'
					<h1 for='header'> '🤨'
				else
					<h1 for='header'> '😂'
					<h1 for='footer'> '🤨'
				<h1> '🌴'
