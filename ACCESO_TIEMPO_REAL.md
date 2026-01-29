# 🔴 ALERTA MÁXIMA: Acceso No Autorizado en Tiempo Real

## ⚠️ SI CREES QUE ALGUIEN ESTÁ EN TU CUENTA AHORA MISMO

Este es el protocolo de emergencia cuando detectas actividad sospechosa en tiempo real.

---

## ⏱️ PRIMEROS 60 SEGUNDOS - ACCIÓN INMEDIATA

### 1. NO CIERRES TU SESIÓN TODAVÍA
- Mantén tu navegador abierto
- Abre otra pestaña o ventana
- Documenta lo que ves con screenshots

### 2. TOMA CAPTURAS DE PANTALLA
```
Captura AHORA:
- [ ] Actividad reciente sospechosa
- [ ] Sesiones activas
- [ ] Log de seguridad
- [ ] Cualquier cambio que veas sucediendo
```

### 3. ABRE ESTAS PÁGINAS EN NUEVAS PESTAÑAS
```
Abre TODAS estas URLs en nuevas pestañas:
✓ https://github.com/settings/security
✓ https://github.com/settings/sessions  
✓ https://github.com/settings/security-log
✓ https://github.com/settings/tokens
✓ https://github.com/settings/keys
✓ https://github.com/settings/applications
```

---

## ⏱️ SIGUIENTE 1 MINUTO - BLOQUEA AL ATACANTE

### 4. REVOCA TODAS LAS SESIONES EXCEPTO LA TUYA
```
1. Ve a: https://github.com/settings/sessions
2. Haz clic en "See more" para ver todas las sesiones
3. IDENTIFICA sesiones sospechosas:
   - Ubicaciones que no reconoces
   - IPs que no son tuyas
   - Dispositivos desconocidos
4. Haz clic en "Revoke all sessions" para cerrar TODO
```

### 5. CAMBIA TU CONTRASEÑA INMEDIATAMENTE
```
1. Ve a: https://github.com/settings/security
2. Haz clic en "Change password"
3. Usa una contraseña COMPLETAMENTE NUEVA
4. Mínimo 20 caracteres
5. Mezcla de letras, números y símbolos
6. NO la uses en ningún otro sitio
```

### 6. ACTIVA 2FA SI NO ESTÁ ACTIVADO
```
1. Ve a: https://github.com/settings/security
2. Haz clic en "Enable two-factor authentication"
3. USA UNA APP AUTHENTICATOR (no SMS si es posible)
4. GUARDA los códigos de recuperación AHORA
5. Toma screenshot o descárgalos
```

---

## ⏱️ SIGUIENTES 2 MINUTOS - REVOCA ACCESOS

### 7. REVOCA TODOS LOS TOKENS
```
1. Ve a: https://github.com/settings/tokens
2. Revoca CADA SINGLE token en la lista
3. Personal access tokens (classic)
4. Fine-grained personal access tokens
5. NO los recrees todavía
```

### 8. ELIMINA CLAVES SSH SOSPECHOSAS
```
1. Ve a: https://github.com/settings/keys
2. Revisa CADA clave SSH
3. Si NO reconoces una clave, ELIMÍNALA
4. Si tienes duda, ELIMÍNALA (podrás recrearla después)
```

### 9. REVOCA APPS OAUTH
```
1. Ve a: https://github.com/settings/applications
2. Revisa "Authorized OAuth Apps"
3. Revoca CUALQUIER app que no reconozcas
4. Revoca apps que no hayas usado recientemente
```

---

## ⏱️ SIGUIENTES 5 MINUTOS - EVALÚA DAÑO

### 10. REVISA EL LOG DE SEGURIDAD
```
Ve a: https://github.com/settings/security-log

Busca eventos recientes (última hora):
- [ ] oauth_authorization.create
- [ ] personal_access_token.create
- [ ] ssh_key.create
- [ ] repository.create
- [ ] repository.destroy
- [ ] repository_visibility.change
- [ ] team.add_member
- [ ] collaborator.add

ANOTA:
- Hora exacta de cada evento sospechoso
- IP address del evento
- User agent (navegador/sistema)
```

### 11. VERIFICA TUS REPOSITORIOS
```
1. Ve a: https://github.com/TU_USUARIO?tab=repositories
2. Ordena por "Last updated"
3. Busca:
   - Repositorios nuevos que no creaste
   - Cambios recientes inesperados
   - Repositorios que cambiaron de privado a público
```

### 12. REVISA COMMITS RECIENTES
```
En tus repositorios principales:
1. Ve a la página del repositorio
2. Haz clic en "Commits"
3. Mira los últimos 20 commits
4. Si ves commits que NO hiciste:
   - Toma screenshot
   - Anota el SHA del commit
   - Anota qué archivos cambiaron
```

---

## ⏱️ SIGUIENTES 10 MINUTOS - PROTEGE REPOS

### 13. REVISA Y LIMPIA COLABORADORES
```
Para CADA repositorio importante:
1. Ve a Settings → Manage access
2. Revisa TODOS los colaboradores
3. Elimina cualquiera que no reconozcas
4. Reduce permisos si es necesario
```

### 14. VERIFICA WEBHOOKS
```
Para CADA repositorio:
1. Ve a Settings → Webhooks
2. Revisa CADA webhook
3. Si ves URLs desconocidas, ELIMÍNALAS
4. Busca webhooks que envíen a:
   - IPs extrañas
   - Dominios sospechosos
   - Servicios que no usas
```

### 15. VERIFICA GITHUB APPS INSTALADAS
```
1. Ve a Settings → GitHub Apps
2. Revisa qué apps tienen acceso al repo
3. Desinstala apps que no reconozcas
```

---

## ⏱️ SIGUIENTES 15 MINUTOS - RECUPERACIÓN

### 16. DOCUMENTA TODO
```
Crea un archivo de texto con:

INCIDENTE DE SEGURIDAD - [FECHA Y HORA]
=======================================

Hora de detección: [HORA EXACTA]

ACTIVIDAD SOSPECHOSA OBSERVADA:
- [Describe lo que viste]

EVIDENCIA RECOPILADA:
- Screenshots guardados en: [UBICACIÓN]
- IPs sospechosas: [LISTA]
- Sesiones revocadas: [CANTIDAD]

ACCIONES TOMADAS:
- [ ] Contraseña cambiada: [HORA]
- [ ] 2FA activado: [HORA]
- [ ] Sesiones revocadas: [HORA]
- [ ] Tokens revocados: [CANTIDAD]
- [ ] Claves SSH eliminadas: [CANTIDAD]
- [ ] Apps OAuth revocadas: [CANTIDAD]

REPOSITORIOS AFECTADOS:
- [LISTA]

CAMBIOS NO AUTORIZADOS:
- [LISTA]
```

### 17. CONTACTA GITHUB SUPPORT
```
1. Ve a: https://support.github.com/
2. Selecciona: "Security" → "Unauthorized access"
3. Marca como URGENTE
4. Incluye:
   - Tu nombre de usuario
   - Hora del incidente
   - Qué observaste
   - Acciones que ya tomaste
   - Screenshots (adjuntos)
   - IPs sospechosas del security log
```

### 18. VERIFICA TU EMAIL
```
1. Revisa tu bandeja de entrada de GitHub
2. Busca emails sobre:
   - Nuevas sesiones
   - Cambios de seguridad
   - Nuevos dispositivos
   - Intentos de login
3. Si tu email TAMBIÉN fue comprometido:
   - CAMBIA contraseña de email AHORA
   - Activa 2FA en email
   - Revisa reglas de reenvío
   - Revisa filtros automáticos
```

---

## ⏱️ PRÓXIMA HORA - SEGURIDAD ADICIONAL

### 19. ROTA TODAS LAS CREDENCIALES
```
Cambia INMEDIATAMENTE:
- [ ] Contraseñas de otros servicios de código:
  - [ ] GitLab
  - [ ] Bitbucket  
  - [ ] Azure DevOps
- [ ] API keys usadas en tus proyectos
- [ ] Secrets en GitHub Actions
- [ ] Variables de entorno en hosting
- [ ] Contraseñas de bases de datos
- [ ] Credenciales de servicios cloud (AWS, Azure, GCP)
```

### 20. VERIFICA OTROS SERVICIOS
```
Si usas GitHub para login en otros servicios:
- [ ] Revisa cada servicio conectado
- [ ] Revoca acceso de GitHub
- [ ] Cambia a login directo con contraseña nueva
- [ ] Activa 2FA en esos servicios también
```

### 21. ESCANEA TU COMPUTADORA
```
El atacante podría haber instalado malware:
- [ ] Ejecuta un antivirus completo
- [ ] Ejecuta anti-malware (Malwarebytes)
- [ ] Revisa procesos en ejecución
- [ ] Revisa programas instalados recientemente
- [ ] Considera reinstalar el sistema operativo si hay duda
```

---

## 🔍 SEÑALES DE ACCESO EN TIEMPO REAL

Estás siendo atacado AHORA si ves:

### En tu pantalla:
- ✘ Commits apareciendo que no hiciste
- ✘ Repositorios creándose o borrándose solos
- ✘ Estrellas o follows apareciendo
- ✘ Issues o PRs abriéndose solos
- ✘ Configuración cambiando sin tu intervención
- ✘ Te desconectan de GitHub (te sacan tu sesión)

### En el log de seguridad:
- ✘ Eventos apareciendo cada pocos segundos
- ✘ Múltiples IPs diferentes en corto tiempo
- ✘ Ubicaciones geográficas imposibles (múltiples países simultáneamente)
- ✘ Creación rápida de tokens o claves

### En sesiones activas:
- ✘ Sesiones desde ubicaciones que no son tuyas
- ✘ Dispositivos que no reconoces
- ✘ Navegadores que no usas
- ✘ Múltiples sesiones simultáneas

---

## 📞 CONTACTOS DE EMERGENCIA

### Soporte GitHub (24/7)
```
URL: https://support.github.com/
Email: support@github.com (para cuentas Enterprise)
Prioridad: CRITICAL/URGENT
```

### Autoridades (si es grave)
```
Policía Cibernética México:
- Tel: 088 (CDMX)
- Email: policia.cibernetica@ssp.cdmx.gob.mx
- Web: https://www.gob.mx/policia-cibernetica

Guardia Nacional - División Científica:
- Email: guardia.nacional@sspc.gob.mx
```

### Este Proyecto
```
Email: rayartemexatatto@gmail.com
```

---

## ✅ DESPUÉS DEL INCIDENTE

### En las próximas 24 horas:
- [ ] Monitorea tu cuenta cada 2-3 horas
- [ ] Revisa el security log regularmente
- [ ] Verifica que no aparezca nueva actividad sospechosa
- [ ] Confirma que GitHub Support recibió tu reporte

### En la próxima semana:
- [ ] Revisa TODOS tus repositorios en detalle
- [ ] Verifica integridad del código
- [ ] Busca backdoors o código malicioso
- [ ] Actualiza toda la documentación de seguridad
- [ ] Informa a colaboradores y stakeholders

### En el próximo mes:
- [ ] Haz auditoría completa de seguridad
- [ ] Implementa mejores prácticas
- [ ] Considera hacer repositorios privados
- [ ] Implementa firma de commits obligatoria
- [ ] Configura alertas automáticas

---

## 🛡️ PREVENCIÓN FUTURA

### Configuración obligatoria:
1. ✅ 2FA con app authenticator (NO SMS)
2. ✅ Contraseñas únicas de 20+ caracteres
3. ✅ Password manager (Bitwarden, 1Password)
4. ✅ Firma GPG en todos los commits
5. ✅ GitHub Mobile para alertas instantáneas

### Hábitos de seguridad:
1. ✅ Revisar security log semanalmente
2. ✅ Verificar sesiones activas semanalmente
3. ✅ Actualizar contraseñas cada 3 meses
4. ✅ Auditar accesos y permisos mensualmente
5. ✅ Hacer backups locales regularmente

### NUNCA:
1. ❌ Usar WiFi público sin VPN
2. ❌ Compartir contraseñas
3. ❌ Reutilizar contraseñas
4. ❌ Hacer clic en links sospechosos
5. ❌ Descargar software de fuentes no confiables
6. ❌ Dejar sesiones abiertas en computadoras compartidas

---

## 📚 MÁS RECURSOS

**En este repositorio:**
- **RECUPERAR_CUENTA.md** - Guía completa de recuperación
- **INCIDENT_RESPONSE.md** - Plan de respuesta a incidentes
- **THEFT_PROTECTION.md** - Protección contra robo
- **SECURITY_CHECKLIST.md** - Checklist de seguridad

**Herramientas útiles:**
- Have I Been Pwned: https://haveibeenpwned.com/
- GitHub Security Advisories: https://github.com/advisories
- Shodan (para ver si tu IP está expuesta): https://www.shodan.io/

---

**⚠️ RECUERDA: Cada segundo cuenta cuando hay acceso no autorizado activo.**

**Actúa RÁPIDO pero SISTEMÁTICAMENTE. Sigue esta guía paso por paso.**

**NO ENTRES EN PÁNICO. RESPIRA. ACTÚA.**
