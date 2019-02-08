//
//  AmphHelpMessages.m
//  Amphetamine
//
//  Created by William Gustafson on 10/29/18.
//  Copyright © 2018 William C. Gustafson. All rights reserved.
//

#import "AmphHelpMessages.h"

@implementation AmphHelpMessages

+ (NSMutableArray *) getMessage : (long) messageSet
{
    NSMutableArray *messageContent = [[NSMutableArray alloc] init];
    
    if (messageSet == 1)
    {
        [messageContent addObject:@"Avvio rapido di una sessione"];
        [messageContent addObject:@"Scegli se fare clic con il tasto sinistro (noto anche come clic principale) o fare clic con il pulsante destro (noto anche come clic secondario) sull'icona Amphetamine nella barra dei menu per visualizzare il menu di Amphetamine o avviare/terminare una sessione."];
    }
    else if (messageSet == 2)
    {
        [messageContent addObject:@"Comportamento di avvio e di sveglia"];
        [messageContent addObject:@"• Avvia Amphetamine al login\nSeleziona questa casella se vuoi che Amphetamine si avvii automaticamente quando accedi al tuo Mac.\n\n• Inizia una sessione quando apri Amphetamine\nSeleziona questa casella se vuoi che Amphetamine avvii automaticamente una nuova sessione all'avvio dell'applicazione.\n\n• Inizia la sessione dopo lo Stop\nSeleziona questa casella se vuoi che Amphetamine avvii una nuova sessione ogni volta che il tuo Mac si sveglia dallo Stop. Se una sessione è già in esecuzione, una nuova sessione non verrà avviata."];
    }
    else if (messageSet == 3)
    {
        [messageContent addObject:@"Altro"];
        if (@available(macOS 10.14, *))
        {
            [messageContent addObject:@"• Nascondi Amphetamine dal Dock\nSeleziona questa casella se vuoi nascondere l'icona di Amphetamine dal Dock. Assicurati di disattivare anche la funzione 'Mostra le applicazioni recenti nel Dock' di macOS in  → Preferenze di Sistema → Dock\n\n• Usa il colore per rappresentare lo stato nelle preferenze rapide\nSeleziona questa casella per utilizzare un cerchio colorato per rappresentare lo stato di ciascun elemento in Preferenze rapide. Verde = ON, Rosso = OFF. Deseleziona questa casella per usare un'icona non basata sul colore: un segno di spunta per ON e una X per OFF.\n\Fai clic sul pulsante Reimposta avvisi e finestre di dialogo per cancellare i flag 'non mostrare più' sui messaggi di avviso e su altre finestre di dialogo.\n\nFai clic sul pulsante Reset tutte le preferenze per ripristinare Amphetamine allo stato di default (tutte le preferenze, anche i Triggers saranno persi)."];
        }
        else
        {
            [messageContent addObject:@"• Nascondi Amphetamine dal Dock\nSeleziona questa casella se vuoi nascondere l'icona di Amphetamine dal Dock.\n\n• Usa il colore per rappresentare lo stato nelle preferenze rapide\nSeleziona questa casella per utilizzare un cerchio colorato per rappresentare lo stato di ciascun elemento in Preferenze rapide. Verde = ON, Rosso = OFF. Deseleziona questa casella per usare un'icona non basata sul colore: un segno di spunta per ON e una X per OFF.\n\Fai clic sul pulsante Reimposta avvisi e finestre di dialogo per cancellare i flag 'non mostrare più' sui messaggi di avviso e su altre finestre di dialogo.\n\nFai clic sul pulsante Reset tutte le preferenze per ripristinare Amphetamine allo stato di default (tutte le preferenze, anche i Triggers saranno persi)."];
        }
    }
    else if (messageSet == 4)
    {
        [messageContent addObject:@"Durata predefinita"];
        [messageContent addObject:@"La Durata predefinita è usata quando in Amphetamine non viene fornita una durata della sessione. Ad esempio quando una sessione inizia all'avvio e quando viene fatto clic nell'icona di Amphetamine nella barra dei menu per iniziare una sessione."];
    }
    else if (messageSet == 5)
    {
        [messageContent addObject:@"Calcolo del tempo di fine"];
        [messageContent addObject:@"L'ora di fine della sessione può essere calcolata utilizzando un timer oppure usando l'orologio di sistema. Per esempio, ipotizziamo di selezionare 'Usa timer' e iniziare una sessione per 3 ore. Poi poni il tuo Mac in stato di Stop. Quando il tuo Mac si risveglia, la sessione avrà ancora 3 ore rimanenti. Questo perchè il timer è stato messo in pausa durante lo stato di Stop.\n\nSempre nello stesso scenario, selezionando 'Usa orologio di sistema' solo 1 ora sarà rimanente. Questo perchè 2 ore sono trascorse nell'orologio di sistema mentre il tuo Mac era in Stop."];
    }
    else if (messageSet == 6)
    {
        [messageContent addObject:@"Monitor in Stop"];
        [messageContent addObject:@"Seleziona questa casella se desideri che il monitor del Mac vada in Stop durante una sessione. Si noti che questa preferenza riguarda solo le sessioni non Trigger. Se vuoi consentire alle tue sessioni Trigger di mandare in Stop il monitor del tuo Mac, ogni singolo Trigger può essere configurato per farlo."];
    }
    else if (messageSet == 7)
    {
        [messageContent addObject:@"Salvaschermo"];
        [messageContent addObject:@"Seleziona questa casella se vuoi che il salvaschermo del tuo Mac venga eseguito durante una sessione. Usa il cursore per selezionare la soglia temporale prima di avviare il salvaschermo. Durante una sessione, Amphetamine monitorerà il tuo Mac per il movimento della tastiera e del mouse. Dopo che la soglia è passata, Amphetamine avvierà il salvaschermo.\n\nÈ possibile aggiungere app a un elenco di eccezioni facendo clic sul pulsante 'Eccezioni...'. Se un'app nell'elenco delle eccezioni è in esecuzione sul tuo Mac, Amphetamine non avvierà il salvaschermo. Questo può essere utile se stai guardando un video o stai leggendo una testo lungo.\n\nSi noti che questa preferenza riguarda solo le sessioni non Trigger. Se vuoi consentire alle tue sessioni Trigger di avviare il salvaschermo, ogni singolo Trigger può essere configurato per farlo."];
    }
    else if (messageSet == 8)
    {
        [messageContent addObject:@"Cambio rapido utente"];
        [messageContent addObject:@"Seleziona questa casella per disabilitare automaticamente tutte le sessioni di Amphetamine (sia Trigger che non-Trigger) quando passi a un account utente diverso sul tuo Mac senza uscire dall'account in cui è in esecuzione Amphetamine."];
    }
    else if (messageSet == 9)
    {
        [messageContent addObject:@"Batteria"];
        [messageContent addObject:@"• Termina sessione se la batteria % è sotto...\nSeleziona questa casella se vuoi che Amphetamine termini automaticamente le sessioni non Trigger quando la batteria del tuo Mac scende sotto la soglia impostata usando il cursore.\n\n• Chiedi prima di terminare una sessione\nSeleziona questa casella se vuoi che ti venga chiesta conferma prima che Amphetamine termini automaticamente una sessione a causa di una carica della batteria bassa. Puoi scegliere di continuare la sessione, ignorando la carica della batteria del Mac, se lo desideri.\n\n• Ignora carica (%) se l'adattatore CA è collegato\nSeleziona questa casella se vuoi che Amphetamine non interrompa automaticamente le sessioni a causa della bassa carica della batteria quando è collegato l'alimentatore CA del tuo Mac.\n\nNota che questa preferenze riguardano le sessioni non Trigger. Se vuoi che le sessioni Trigger considerino la carica della batteria del tuo Mac, aggiungi un criterio di Alimentazione."];
    }
    else if (messageSet == 10)
    {
        [messageContent addObject:@"Adattatore di alimentazione CA"];
        [messageContent addObject:@"Nota che devi abilitare la preferenza 'Termina sessione se la batteria % è sotto...' e abilitare 'Ignora carica (%) se l'adattatore CA è collegato' o spostare tutto a destra lo slider di 'Termina sessione se la batteria % è sotto...' per essere disponibile.\n\nSeleziona questa casella per fare in modo che Amphetamine avvii automaticamente una nuova sessione ogni volta che viene collegato l'alimentatore CA del tuo Mac. Amphetamine avvierà una nuova sessione solo se la sessione precedente è terminata a causa di una carica insufficiente della batteria."];
    }
    else if (messageSet == 11)
    {
        [messageContent addObject:@"Triggers"];
        [messageContent addObject:@"I Triggers sono una delle caratteristiche più potenti di Amphetamine. Puoi creare quanti Trigger vuoi. Quando tutti i criteri di un determinato trigger sono soddisfatti, Amphetamine avvierà automaticamente una nuova sessione (se uno non è già in esecuzione).\n\nOltre al pulsante Abilita trigger globale, se spuntato, abilita la funzione Trigger e ogni singolo trigger che crei può anche essere abilitato/disabilitato. Utilizzare la casella di controllo a destra di ciascun trigger nell'elenco per abilitare o disabilitare temporaneamente un singolo trigger.\n\nUsa il pulsante + per creare un nuovo trigger. Selezionare un trigger nell'elenco e utilizzare il pulsante - per eliminare un trigger.\n\nSelezionare un trigger nell'elenco e utilizzare i pulsanti ↑ e ↓ per riordinare l'elenco dei trigger. I trigger verranno valutati nell'ordine in cui vengono visualizzati nell'elenco. Ovvero, il primo (il più alto) Trigger nella lista sarà valutato per primo. Se tutti i suoi criteri sono soddisfatti, inizierà una sessione. Se non vengono soddisfatti tutti i criteri, verrà valutato il secondo trigger nell'elenco."];
    }
    
    else if (messageSet == 12)
    {
        [messageContent addObject:@"Drive Alive"];
        [messageContent addObject:@"Drive Alive può mantenere i dischi rigidi svegli (vivi) e pronti all'azione. Drive Alive funziona scrivendo una piccola quantità di dati sui dischi rigidi ad intervalli regolari. Questi dati vengono sovrascritti ripetutamente e occupano solo un paio di kilobyte (KB) di spazio sull'unità.\n\nPer aggiungere una nuova unità, fare clic sul pulsante +, quindi selezionare l'unità che si desidera mantenere in vita. Selezionare un'unità nell'elenco e fare clic sul pulsante - per rimuoverla.\n\nOgni unità nell'elenco può essere mantenuta attiva solo quando una sessione è in esecuzione, o tenuto in vita ogni volta che Amphetamine è in esecuzione. Per mantenere sempre attiva l'unità, seleziona la casella a destra dell'unità nella lista.\n\nL'intervallo predefinito di Drive Alive per scrivere i dati sull'unità è ogni 10 secondi. Puoi cambiarlo inserendo un nuovo valore nel campo numerico in fondo alla finestra."];
    }
    else if (messageSet == 13)
    {
        [messageContent addObject:@"Inizia o termina sessione"];
        [messageContent addObject:@"Questo tasto di scelta rapida consente di avviare o terminare una sessione utilizzando un tasto di scelta rapida. La durata predefinita (Preferenze → Sessioni → Durata predefinita) sarà usata per la durata della sessione.\n\nDopo aver registrato la combinazione di tasti per questo tasto di scelta rapida, potrai accedere a questa funzione di Amphetamine indipendentemente da dove ti trovi in macOS. Amphetamine non ha bisogno di essere in primo piano, ma deve essere in esecuzione.\n\nSe non si è in grado di registrare la combinazione di tasti di scelta rapida desiderata, ciò significa che la combinazione di tasti è già in uso altrove, da un'altra app."];
    }
    else if (messageSet == 14)
    {
        [messageContent addObject:@"Inizia sessione"];
        [messageContent addObject:@"Questo tasto di scelta rapida consente di avviare una sessione con una durata specifica utilizzando un tasto di scelta rapida. Specifica la durata che desideri che la sessione abbia.\n\nDopo aver registrato la combinazione di tasti per questo tasto di scelta rapida, potrai accedere a questa funzione di Amphetamine indipendentemente da dove ti trovi in macOS. Amphetamine non ha bisogno di essere in primo piano, ma deve essere in esecuzione.\n\nSe non si è in grado di registrare la combinazione di tasti di scelta rapida desiderata, ciò significa che la combinazione di tasti è già in uso altrove, da un'altra app."];
    }
    else if (messageSet == 15)
    {
        [messageContent addObject:@"Termina sessione"];
        [messageContent addObject:@"Questo tasto di scelta rapida consente di terminare una sessione utilizzando un tasto di scelta rapida.\n\n8Dopo aver registrato la combinazione di tasti per questo tasto di scelta rapida, potrai accedere a questa funzione di Amphetamine indipendentemente da dove ti trovi in macOS. Amphetamine non ha bisogno di essere in primo piano, ma deve essere in esecuzione.\n\nSe non si è in grado di registrare la combinazione di tasti di scelta rapida desiderata, ciò significa che la combinazione di tasti è già in uso altrove, da un'altra app."];
    }
    else if (messageSet == 16)
    {
        [messageContent addObject:@"Apri menu"];
        [messageContent addObject:@"Questo tasto di scelta rapida consente di aprire il menu di Amphetamine utilizzando un tasto di scelta rapida. Questo è utile per verificare rapidamente la sessione e i dettagli di Drive Alive mostrati nel menu, o per navigare rapidamente o selezionare un elemento del menu items usando le frecce o una combinazione di tasti della tastiera (es. ⌘F per iniziare una sessione 'Mentre un file è in scaricamento...'.\n\nDopo aver registrato la combinazione di tasti per questo tasto di scelta rapida, potrai accedere a questa funzione di Amphetamine indipendentemente da dove ti trovi in macOS. Amphetamine non ha bisogno di essere in primo piano, ma deve essere in esecuzione.\n\nSe non si è in grado di registrare la combinazione di tasti di scelta rapida desiderata, ciò significa che la combinazione di tasti è già in uso altrove, da un'altra app."];
    }
    else if (messageSet == 17)
    {
        [messageContent addObject:@"Promemoria della sessione"];
        [messageContent addObject:@"Seleziona questa casella se vuoi che Amphetamine spedisca una notifica/promemoria ad intervalli regolari mentre è in corso una qualsiasi sessione."];
    }
    else if (messageSet == 18)
    {
        [messageContent addObject:@"Notifiche Trigger/Programmate"];
        [messageContent addObject:@"Seleziona questa casella se vuoi che Amphetamine spedisca una notifica quando una sessione inizia o termina automaticamente. Questo include sessione Trigger, programmate e alcune sessioni a tempo.\n\nLe sessione iniziate o terminate manualmente cliccando l'icona di Amphetamine nella barra dei menu o selezionando un opzione dal menu di Amphetamine non causerà l'invio di una notifica."];
    }
    else if (messageSet == 19)
    {
        [messageContent addObject:@"Suono"];
        [messageContent addObject:@"• Riproduci quando una sessione inizia o finisce\nSeleziona questa casella se vuoi che venga riprodotto un suono all'avvio o termine di una sessione\n\n• Riproduci con promemoria di sessione/altre notifiche\nSeleziona questa casella se vuoi che venga riprodotto un suono quando viene inviata una notifica.\n\nPer aggiungere un suono personalizzato, fai clic sul pulsante + e seleziona un file di suono. Per rimuovere un suono personalizzato, fai clic sul pulsante -. Una finestra del Finder verrà aperta visualizzando la directory dei suoni. Rimuovi il suono dal Finder trascinandolo nel Cestino oppure utilizza la combinazione Command + Delete."];
    }
    else if (messageSet == 20)
    {
        [messageContent addObject:@"Centro Notifiche"];
        [messageContent addObject:@"Seleziona questa casella se vuoi che Amphetamine pulisca automaticamente la notifica dal Centro Notifiche. Questo aiuterà a ridurre l'ingombro nel Centro Notifiche, specialmente se hai attivo i Promemoria di Sessione."];
    }
    else if (messageSet == 21)
    {
        [messageContent addObject:@"Icone di stato"];
        [messageContent addObject:@"Seleziona le icone che vuoi visualizzare per rappresentare lo stato di sessione (attivo/inattivo) di Amphetamine. Quando una sessione inizia o termina, l'icona di Amphetamine nel menu verrà aggiornata opportunamente.\n\nO in alternativa, puoi personalizzare l'icona."];
    }
    else if (messageSet == 22)
    {
        [messageContent addObject:@"Testo della barra dei menu"];
        [messageContent addObject:@"• Mostra il tempo di sessione rimanente nella barra dei menu\nSeleziona questa casella se vuoi visualizzare il tempo di sessione rimenente o l'ora di termine a fianco dell'icona di Amphetamine nella barra dei menu.\n\nScegli ulteriori opzioni di formattazione come la dimensione del testo nella barra dei menu, come viene rappresentato il tempo, se includere i secondi e se rappresentare l'ora nel formato 12 o 24 ore."];
    }
    else if (messageSet == 23)
    {
        [messageContent addObject:@"Menu Extra"];
        [messageContent addObject:@"• Mostra i dettagli delle sessioni correnti\nSeleziona questa casella per mostrare i dettagli della sessione come la durata/tempo di sessione rimanente e il motivo di attivazione nel menu di Amphetamine.\n\n• Mostra dettagli Drive Alive\nSeleziona questa casella per mostrare i dettagli di Drive Alive come le unità che sono tenute in vita e quelle non."];
    }
    else if (messageSet == 24)
    {

    }
    else if (messageSet == 25)
    {
        [messageContent addObject:@"Eccezioni"];
        [messageContent addObject:@"Se una qualcunque applicazione o processo sono in esecuzione su questa tabella, bloccherà ad Amphetamine di attivare il salvaschermo del tuo Mac.\n\nFai clic sul pulsante + per aggiungere un applicazione o processo alla tabella. Seleziona un applicazione dalla tabella e fai clic sul pulsante - per rimuoverla.\n\nSe non riesci a trovare l'applicazione o processo può darsi che non sia in esecuzione o le policy di sicurezza di Apple negano ad Amphetamine di visualizzare l'applicazione/processo."];
    }
    else if (messageSet == 26)
    {
        [messageContent addObject:@"Applicazioni e processi"];
        [messageContent addObject:@"Per visualizzare un applicazione o processo in questa tabella, deve essere in esecuzione sul tuo Mac. Questa casella di controllo filtrerà ulteriormente questa lista includendo o meno le applicazioni/processi di supporto. Le applicazioni o processi di supporto tipicamente non hanno interfaccia utente e sono eseguiti in background. Questo spesso include applicazioni come Amphetamine, dato che è in esecuzione nella barra dei menu e non ha un icona Dock.\n\nnSe non riesci a trovare l'applicazione o processo può darsi che non sia in esecuzione o le policy di sicurezza di Apple negano ad Amphetamine di visualizzare l'applicazione/processo."];
    }
    else if (messageSet == 27)
    {
        [messageContent addObject:@"Configurazione dei Trigger"];
        [messageContent addObject:@"Nome\nDai al tuo Trigger un nome dedicato. Il nome del Trigger verrà usato nelle notifiche e nei dettagli della sessione nel menu di Amphetamine (se hai le preferenze attivate).\n\nCriterio\nIl tuo Trigger può usare un'istanza di ciascun criterio. Per aggiungere un nuovo criterio, usa il pulsante \"Aggiungi criterio…\", seleziona un criterio e attiva la casella per utilizzarla. Per rimuovere un criterio, fai doppio clic al criterio nella tabella dei criteri e de-seleziona la casella\n\nOpzioni aggiuntive\nOgni Trigger che crei può essere configurato indipendentemente per consentire o impedire al monitor di andare in Stop e/o avviare il salvaschermo del tuo Mac. Nota che l'elenco delle eccezioni per il salvaschermo (Preferenze → Sessioni) sarà usato per il tuo Trigger se scegli di consentire il salvaschermo nel tuo Mac."];
    }
    else if (messageSet == 28)
    {
        [messageContent addObject:@"Criterio Wi-Fi"];
        [messageContent addObject:@"Questo criterio viene verificato solo se il tuo Mac è connesso ad uno specifico network Wi-Fi. Inserisci il nome del network Wi-Fi (case-sensitive) nel campo indicato o fai clic sul pulsante per ottenere il nome del network Wi-Fi connesso attualmente."];
    }
    else if (messageSet == 29)
    {
        [messageContent addObject:@"Criterio Indirizzo IP"];
        [messageContent addObject:@"Questo criterio viene verificato solo se il tuo Mac ha uno specifico indirizzo IP o se l'indirizzo IP ricade dentro uno specifico range. Fai clic sul pulsante per ottenere l'indirizzo IP attuale o inserisci gli indirizzi manualmente."];
    }
    else if (messageSet == 30)
    {
        [messageContent addObject:@"Criterio Applicazione"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando una specifica applicazione è in esecuzione sul tuo Mac. Solo le applicazioni che sono attualmente in esecuzione vengono visualizzate nella lista. Se non riesci a trovare l'applicazione o processo può darsi che non sia in esecuzione o le policy di sicurezza di Apple negano ad Amphetamine di visualizzare l'applicazione/processo."];
    }
    else if (messageSet == 31)
    {
        [messageContent addObject:@"Criterio Energia"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando una specifica condizione di energia viene assecondata dal tuo Mac."];
    }
    else if (messageSet == 32)
    {
        [messageContent addObject:@"Criterio Programma"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando l'ora corrente e il giorno dell'orologio di sistema del Mac ricade nel range specificato."];
    }
    else if (messageSet == 33)
    {
        [messageContent addObject:@"Criterio Monitor"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando un certo numero di monitor sono connessi al tuo Mac. Se il tuo Mac ha uno schermo integrato, verrà contato come 1 monitor./n/nSe connetti un monitor esterno oltre al monitor integrato, verranno conteggiati come 2 monitor./n/nSe hai abilitato la duplicazione dello schermo e hai connesso un monitor esterno, verra conteggiato come 1 monitor."];
    }
    else if (messageSet == 34)
    {
        [messageContent addObject:@"Criterio Volume/Unità"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando una specifica unità o volume è montato nel tuo Mac. Per visualizzare una determinata unità o volume nella lista, assicurati che sia montata."];
    }
    else if (messageSet == 35)
    {
        [messageContent addObject:@"Criterio Uscita Audio"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando una specifica uscita audio è impostata come uscita audio sul tuo Mac./n/nL'uscita audio può essere impostata in  → Preferenze di Sistema → Suono → Uscita."];
    }
    else if (messageSet == 36)
    {
        [messageContent addObject:@"Criterio Dispositivo Bluetooth"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando uno specifico dispositivo Bluetooth è connesso al tuo Mac. Solo i dispositivi già abbinati al tuo Mac verranno visualizzati nella lista.\n\nPer abbinare un nuovo dispositivo Bluetooth, attiva la modalità abbinamento sul tuo dispositivo e visita  → Preferenze di Sistema → Bluetooth."];
    }
    else if (messageSet == 37)
    {
        [messageContent addObject:@"Criterio Servizio VPN"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando il tuo Mac è connesso ad uno specifico servizio VPN. Avvia il tuo servizio VPN nel tuo Mac e fai clic sul pulsante di ricarica per ottenere il nome del servizio.\n\nQuesto criterio è in via sperimentale, siccome non tutti i servizi VPN sono stati testati. Contatta il supporto di Amphetamine per richiedere assistenza."];
    }
    else if (messageSet == 38)
    {
        [messageContent addObject:@"Criterio Dispositivo USB"];
        [messageContent addObject:@"Questo criterio viene verificato solo quando uno specifico dispositivo USB è connesso al tuo Mac. Per visualizzare il dispositivo USB desiderato, connettilo al tuo Mac e accendilo."];
    }
    
    return messageContent;
}

@end
