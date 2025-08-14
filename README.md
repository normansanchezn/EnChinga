# EnChinga
App for local deliveries.

## File structure:

YourApp/
│
├── App/                      # Entry point, configuración global
│   ├── YourAppApp.swift
│   ├── AppDelegate.swift
│   └── SceneDelegate.swift (si aplica)
│
├── Core/                     # Utilidades y cosas transversales
│   ├── Extensions/           # Extensiones de tipos nativos (String+, Color+, etc.)
│   ├── Utilities/            # Helpers, formatters, loggers
│   ├── Constants/            # Strings, colores, valores fijos
│   └── Enums/                # Enums globales y reusables
│
├── Data/                     # Capa de datos (repositorios e implementación)
│   ├── DTOs/                 # Data Transfer Objects
│   ├── Repositories/         # Implementaciones concretas (ej: API, CoreData, etc.)
│   ├── Mappers/               # Conversores DTO ↔ Domain Model
│   └── API/                   # Servicios de red
│
├── Domain/                   # Lógica de negocio pura (sin dependencias de UI)
│   ├── Entities/             # Modelos del dominio (Business Models)
│   ├── Repositories/         # Protocolos de repositorios
│   ├── UseCases/              # Casos de uso
│
├── Presentation/             # UI y capa de presentación
│   ├── Modules/               # Cada pantalla o feature
│   │   ├── FeatureName/
│   │   │   ├── Views/         # SwiftUI Views
│   │   │   ├── ViewModels/    # ViewModels con lógica de UI
│   │   │   └── Models/        # Modelos específicos de UI (UI Models)
│   ├── Components/            # Custom reusable views
│
└── Resources/                 # Assets, fuentes, JSONs locales, etc.

## Clean + Repository Pattern:

   ┌─────────────────────┐
   │     Presentation     │
   │  (Views & ViewModels)│
   └──────────▲───────────┘
              │
              │
   ┌──────────┴───────────┐
   │       Domain          │
   │ Entities / UseCases   │
   │ Repositories Protocol │
   └──────────▲───────────┘
              │
              │
   ┌──────────┴───────────┐
   │        Data           │
   │ DTOs / API / Mappers  │
   │ Repository Impl.      │
   └───────────────────────┘
## Work flow

User Action → Intent → ViewModel → Cambia State → View se actualiza


## Presentation file structure

Presentation/
 └── Login/
      ├── LoginView.swift         // View
      ├── LoginViewModel.swift    // ViewModel
      ├── LoginState.swift        // Model (estado de UI)
      └── LoginAction.swift       // Intents o Actions

## Architecture

   ┌───────────┐       Intent / Action       ┌─────────────┐
   │   View    │ ─────────────────────────► │  ViewModel  │
   └────▲──────┘                              └──────▲──────┘
        │   State Binding                        │  Actualiza State
        └────────────────────────────────────────┘

