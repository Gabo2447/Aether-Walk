# Aether Walk (Nombre en Clave) 🌌🏃‍♂️

**Aether Walk** es un proyecto personal de desarrollo de videojuegos creado con **Godot Engine 4**. Este es mi primer "plataformero 2D normalito" 😂, y su objetivo principal es servir como campo de pruebas para aprender las mecánicas fundamentales del desarrollo de juegos, la arquitectura limpia en GDScript y el flujo de trabajo con Git.

> _"Un pequeño salto para un componente, un gran salto para mi historial de commits."_

---

## 🔥 Objetivos del Proyecto (¿Qué estoy aprendiendo?)

El propósito de este juego no es ganar el _Game of the Year_, sino dominar los siguientes conceptos en Godot 4:

- [x] **Movimiento Modular:** Implementación de físicas de plataformas usando composición (Componentes de Gravedad, Salto, Input, Velocidad).
- [ ] **Mecánicas de Plataformas:** Doble salto, _coyote time_, saltos variables en altura.
- [ ] **Gestión de Entradas (Input):** Manejo fluido y responsivo de los controles.
- [ ] **Estructura de Proyecto:** Organización limpia de carpetas, escenas y scripts.
- [ ] **Sistemas de Juego:** Gestión de estados (Idle, Run, Jump, Fall).
- [ ] **Git Workflow:** Uso de Conventional Commits y ramas.

---

## 🛠️ Arquitectura Técnica: Composition over Inheritance

Una de las metas principales es evitar los scripts monolíticos. En su lugar, el Player está construido uniendo pequeños componentes reutilizables:

```text
src/
└── components/
    └── motion/
        ├── gravity_component.gd   (Maneja la caída)
        ├── input_component.gd     (Lee las teclas)
        ├── jump_component.gd      (Maneja el impulso hacia arriba)
        └── velocity_component.gd  (Calcula el movimiento final)
```

## 🚀 Cómo probarlo

1. Asegúrate de tener instalado Godot Engine 4.x (la versión más reciente).
2. Clona este repositorio en tu máquina local.
3. Importa el proyecto desde el Project Manager de Godot.
4. Abre la escena principal o levels/test_map.tscn.
5. ¡Presiona F5 para ejecutar el proyecto!

## 🎮 Controles (Provisionales):

WASD / Flechas: Movimiento lateral.
Espacio: Saltar.
Esc: Salir (si implemento el menú, ¡claro!).

## 📅 Roadmap (Mi lista de tareas)

Esta lista irá creciendo conforme aprenda cosas nuevas:

[x] Fase 1: Crear el controlador base del Player.
[ ] Fase 2: Pulir el salto (Coyote Time y Jump Buffer).
[ ] Fase 2: Añadir animaciones con Sprite2D y AnimationPlayer.
[ ] Fase 3: Implementar enemigos básicos con patrullas.
[ ] Fase 4: Sistema de daño, vida y pantalla de Game Over.

[ ] Extra: ¡Primer nivel completo con un final de bandera!

## 🤝 Contribuciones

Este es un proyecto de aprendizaje personal, por lo que no busco contribuciones activas. Sin embargo, si eres un dev de Godot y ves algo en mi código que te haga sangrar los ojos (o que pueda optimizarse), ¡un Issue o consejo es más que bienvenido! ❤️

## 📄 Licencia

Este proyecto está bajo la Licencia MIT. Siéntete libre de usar el código para tus propios experimentos de aprendizaje. ¡El conocimiento es libre! 🤓
