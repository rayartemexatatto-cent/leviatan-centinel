# 🚨 EMERGENCIA: Cuenta de GitHub Robada

## ¡ACTÚA AHORA! Tu cuenta ha sido comprometida

Si crees que tu cuenta de GitHub fue robada, sigue estos pasos **INMEDIATAMENTE**.

---

## 🔴 PASO 1: Intenta Recuperar el Acceso (AHORA)

### Si AÚN puedes iniciar sesión:

1. **Cambia tu contraseña INMEDIATAMENTE**
   - Ve a: https://github.com/settings/security
   - Haz clic en "Change password"
   - Usa una contraseña FUERTE y ÚNICA (mínimo 16 caracteres)
   - NO uses la misma contraseña de otros sitios

2. **Activa la Autenticación de Dos Factores (2FA)**
   - Ve a: https://github.com/settings/security
   - Haz clic en "Enable two-factor authentication"
   - USA UNA APP (Google Authenticator, Authy, Microsoft Authenticator)
   - GUARDA los códigos de recuperación en lugar seguro

3. **Cierra todas las sesiones activas**
   - Ve a: https://github.com/settings/sessions
   - Haz clic en "See more" para ver todas las sesiones
   - Revoca TODAS las sesiones sospechosas
   - Haz clic en "Revoke all sessions" para cerrar todo

4. **Revoca todos los tokens de acceso**
   - Ve a: https://github.com/settings/tokens
   - Revoca TODOS los Personal Access Tokens (PATs)
   - Créalos de nuevo SOLO cuando sea necesario

5. **Revisa y elimina claves SSH sospechosas**
   - Ve a: https://github.com/settings/keys
   - Elimina CUALQUIER clave que no reconozcas
   - Elimina claves antiguas que ya no uses

6. **Revoca aplicaciones OAuth sospechosas**
   - Ve a: https://github.com/settings/applications
   - Revoca acceso a CUALQUIER aplicación que no reconozcas

### Si NO puedes iniciar sesión:

1. **Recupera tu cuenta usando el email**
   - Ve a: https://github.com/login
   - Haz clic en "Forgot password?"
   - Sigue las instrucciones enviadas a tu email

2. **Si tu email también fue comprometido:**
   - Recupera tu email PRIMERO
   - Luego recupera tu cuenta de GitHub
   - Contacta a tu proveedor de email (Gmail, Outlook, etc.)

3. **Si no puedes recuperar por email:**
   - Contacta a GitHub Support INMEDIATAMENTE
   - Ve a: https://support.github.com/
   - Selecciona "Account recovery" como tema
   - Proporciona TODA la información posible:
     * Nombre de usuario
     * Email asociado
     * Emails alternativos
     * Repositorios que posees
     * Información de pago (si tienes cuenta Pro)
     * Última actividad que recuerdes

---

## 🔴 PASO 2: Evalúa el Daño (Siguiente 10 minutos)

### Revisa qué hicieron en tu cuenta:

1. **Verifica tus repositorios**
   ```
   Ve a: https://github.com/TU_USUARIO?tab=repositories
   
   Busca:
   - Repositorios nuevos que no creaste
   - Repositorios eliminados
   - Cambios en la visibilidad (público/privado)
   ```

2. **Revisa commits recientes**
   ```
   En cada repositorio importante, verifica:
   - Commits que no hiciste
   - Código malicioso agregado
   - Secretos o credenciales expuestas
   ```

3. **Revisa el log de seguridad**
   ```
   Ve a: https://github.com/settings/security-log
   
   Busca:
   - Inicios de sesión desde ubicaciones desconocidas
   - Cambios en configuración de seguridad
   - Creación de tokens o claves SSH
   - Cambios en colaboradores
   ```

4. **Verifica organizaciones**
   ```
   Si perteneces a organizaciones:
   - Verifica que no te hayan removido
   - Verifica que no hayan agregado colaboradores
   - Verifica cambios en permisos
   ```

5. **Revisa la actividad reciente**
   ```
   Ve a: https://github.com/TU_USUARIO
   
   En el feed de actividad, busca:
   - Repositorios forkeados
   - Issues creados
   - Pull requests
   - Comentarios
   - Stars o follows sospechosos
   ```

---

## 🔴 PASO 3: Limpia el Daño (Siguiente 30 minutos)

### Acciones de limpieza:

1. **Elimina contenido malicioso**
   - Revisa TODOS los commits recientes en tus repos
   - Revierte cualquier commit sospechoso
   - Elimina código malicioso agregado

2. **Restaura repositorios eliminados**
   - Contacta a GitHub Support si es necesario
   - Restaura desde backups locales si los tienes

3. **Revoca accesos no autorizados**
   - Revisa colaboradores en TODOS tus repositorios
   - Elimina cualquier colaborador no autorizado
   - Revisa webhooks y GitHub Apps instaladas

4. **Notifica a colaboradores legítimos**
   - Avisa a tu equipo sobre la brecha de seguridad
   - Pídeles que revisen sus propias cuentas
   - Cambia cualquier secreto compartido

5. **Rota TODAS las credenciales**
   - Cambia TODAS las API keys
   - Rota TODOS los secrets en tus aplicaciones
   - Actualiza variables de entorno
   - Cambia contraseñas de bases de datos
   - Rota certificados SSL

---

## 🔴 PASO 4: Protege tu Cuenta (Siguiente hora)

### Fortalece la seguridad:

1. **Usa un gestor de contraseñas**
   - Recomendados: Bitwarden, 1Password, LastPass
   - Genera contraseñas únicas para cada servicio
   - NUNCA reutilices contraseñas

2. **Configura 2FA en TODOS tus servicios**
   - Email (Gmail, Outlook, etc.)
   - GitHub
   - Servicios en la nube (AWS, Azure, GCP)
   - Cualquier servicio relacionado con tu trabajo

3. **Revisa otros servicios conectados**
   - Verifica GitLab, Bitbucket, etc.
   - Cambia contraseñas en TODOS
   - Activa 2FA en TODOS

4. **Configura firma de commits GPG**
   ```bash
   # Genera una clave GPG
   gpg --full-generate-key
   
   # Lista tus claves
   gpg --list-secret-keys --keyid-format=long
   
   # Configura Git
   git config --global user.signingkey TU_KEY_ID
   git config --global commit.gpgsign true
   
   # Exporta tu clave pública
   gpg --armor --export TU_KEY_ID
   
   # Agrégala a GitHub
   # Ve a: https://github.com/settings/keys
   ```

5. **Habilita vigilancia de GitHub**
   - Activa Dependabot alerts
   - Activa Secret scanning (si está disponible)
   - Configura notificaciones por email
   - Instala GitHub Mobile para alertas instantáneas

---

## 🔴 PASO 5: Documenta Todo (Para referencia legal)

### Crea un registro del incidente:

```markdown
# Registro de Incidente de Seguridad

**Fecha del descubrimiento**: [FECHA Y HORA]
**Usuario afectado**: [TU USUARIO]

## Cómo me di cuenta:
- [Describe qué notaste primero]

## Evidencia del compromiso:
- [ ] Screenshots del log de seguridad
- [ ] Lista de cambios no autorizados
- [ ] IPs de accesos sospechosos
- [ ] Timestamps de actividad anormal

## Daño identificado:
- [ ] Repositorios afectados: [LISTA]
- [ ] Datos expuestos: [LISTA]
- [ ] Código malicioso agregado: [LISTA]
- [ ] Credenciales comprometidas: [LISTA]

## Acciones tomadas:
- [ ] Contraseña cambiada: [FECHA/HORA]
- [ ] 2FA activado: [FECHA/HORA]
- [ ] Sesiones revocadas: [FECHA/HORA]
- [ ] Tokens revocados: [FECHA/HORA]
- [ ] Código malicioso removido: [FECHA/HORA]
- [ ] Credenciales rotadas: [FECHA/HORA]

## Contactos realizados:
- [ ] GitHub Support contactado: [FECHA]
- [ ] Ticket #: [NÚMERO]
- [ ] Equipo notificado: [FECHA]
```

---

## 📞 Contactos de Emergencia

### GitHub Support
- **URL**: https://support.github.com/
- **Tema**: "Account recovery" o "Security incident"
- **Prioridad**: URGENTE

### Si necesitas ayuda legal
- Consulta con un abogado especializado en ciberseguridad
- Documenta TODO para posible acción legal

### Reporta el crimen cibernético
- En México: Policía Cibernética - https://www.gob.mx/policia-cibernetica
- En México: guardia.nacional@sspc.gob.mx

---

## ⚠️ Prevención Futura

### NUNCA VUELVAS A:
- ❌ Usar la misma contraseña en múltiples sitios
- ❌ Compartir tu contraseña con nadie
- ❌ Anotar contraseñas en papel o archivos sin cifrar
- ❌ Usar computadoras públicas para cuentas importantes
- ❌ Hacer clic en enlaces sospechosos en emails
- ❌ Descargar software pirata o de fuentes no confiables
- ❌ Conectarte a WiFi público sin VPN

### SIEMPRE:
- ✅ Usa un gestor de contraseñas
- ✅ Activa 2FA en TODOS los servicios
- ✅ Revisa regularmente tu log de seguridad
- ✅ Mantén tu software actualizado
- ✅ Usa antivirus actualizado
- ✅ Haz backups regulares de tu trabajo
- ✅ Firma tus commits con GPG
- ✅ Revisa actividad sospechosa semanalmente

---

## 📚 Recursos Adicionales

**En este repositorio:**
- **START_HERE.md** - Guía rápida de emergencia
- **INCIDENT_RESPONSE.md** - Plan de respuesta a incidentes
- **THEFT_PROTECTION.md** - Protección contra robo
- **SECURITY_CHECKLIST.md** - Checklist de seguridad

**Enlaces útiles:**
- Soporte de GitHub: https://support.github.com/
- Seguridad de GitHub: https://docs.github.com/en/authentication/keeping-your-account-and-data-secure
- Have I Been Pwned: https://haveibeenpwned.com/ (verifica si tu email fue comprometido)

---

## 💪 No Estás Solo

Miles de desarrolladores han pasado por esto. Lo importante es actuar RÁPIDO y CORRECTAMENTE.

**Pasos inmediatos:**
1. Recupera el acceso a tu cuenta
2. Cambia TODAS las contraseñas
3. Activa 2FA EN TODO
4. Documenta el incidente
5. Contacta a GitHub Support

**Contacto de este proyecto:**
📧 rayartemexatatto@gmail.com

---

**¡Actúa AHORA! Cada minuto cuenta cuando tu cuenta está comprometida.**
