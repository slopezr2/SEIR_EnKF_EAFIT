# SEIR_EnKF_EAFIT

Para realizar cambios en el modelo ir a carpeta EnKF_seir:

	seir.f90 archivo del modelo, cambiar parametros del modelo

	m_pfactors.f90 factores de cada grupo de edad

    m_agegroups.f90 definir grupos de edad

    m_Rmatrix.f90 definir matriz de relacion entre grupos de edad para despues de la cuerentena

En caso de algun cambio, realizar make en este mismo directorio

Para correr el modelo ir a la carpeta EnKF_seir_build

	./seir ejecutable del modelo, (automaticamente genera las graficas en python)

	Graphs_SEIR.py script para graficar en python
