.class public Lcom/viber/voip/contacts/ui/bp;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    .line 58
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/bp;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;JLjava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    sget-object v2, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    sget-object v3, Lcom/viber/voip/a/a;->z:Lcom/viber/voip/a/u;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v3, "336"

    invoke-virtual {v2, v3}, Lcom/viber/voip/a/u;->b(Ljava/lang/String;)Lcom/viber/voip/a/x;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 91
    const v0, 0x7f0c0326

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p4, v2, v1

    const/4 v3, 0x1

    aput-object p4, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/viber/voip/contacts/ui/bq;

    invoke-direct {v3, p1, p2, p3, p5}, Lcom/viber/voip/contacts/ui/bq;-><init>(JLjava/lang/String;Ljava/lang/Runnable;)V

    const/4 v4, 0x0

    const v5, 0x7f0c034a

    move-object v0, p0

    move v6, v1

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;ILjava/lang/CharSequence;Lcom/viber/voip/util/az;Ljava/lang/Runnable;IZ)Landroid/content/DialogInterface;

    .line 104
    return-void
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 233
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;)V

    .line 281
    :goto_0
    return-void

    .line 236
    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    if-le v1, v2, :cond_2

    .line 237
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v3, v1, [Ljava/lang/String;

    .line 238
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v1

    new-array v4, v1, [Z

    .line 240
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v0

    .line 242
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 244
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v3, v2

    .line 245
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    aput-boolean v0, v4, v2

    .line 246
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 247
    goto :goto_1

    .line 249
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 250
    new-instance v1, Lcom/viber/voip/contacts/ui/bs;

    invoke-direct {v1, p2, v3}, Lcom/viber/voip/contacts/ui/bs;-><init>(Ljava/util/Map;[Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const v1, 0x7f0c0638

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 257
    const v1, 0x7f0c02b6

    invoke-virtual {v0, v1, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 258
    const v1, 0x7f0c0634

    new-instance v2, Lcom/viber/voip/contacts/ui/bt;

    invoke-direct {v2, p2, p0, p1}, Lcom/viber/voip/contacts/ui/bt;-><init>(Ljava/util/Map;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 275
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 278
    :cond_2
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0, p1, v0, v6, v2}, Lcom/viber/voip/block/i;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/util/Set;Ljava/lang/Runnable;Z)V

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 124
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/provider/ContactsContract$Contacts;->lookupContact(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    .line 126
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.EDIT"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 128
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    :goto_0
    return-void

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const v0, 0x7f0c0643

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static a(ZJJLjava/lang/String;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 135
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p5

    move v6, p0

    invoke-interface/range {v0 .. v6}, Lcom/viber/voip/contacts/c/d/b;->a(JJLjava/lang/String;Z)V

    .line 136
    return-void
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0c0643

    const/4 v4, 0x1

    .line 139
    invoke-static {p0}, Lcom/viber/voip/sms/s;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getHardwareParameters()Lcom/viber/voip/registration/HardwareParameters;

    move-result-object v1

    invoke-interface {v1}, Lcom/viber/voip/registration/HardwareParameters;->isGsmSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    const-string/jumbo v2, "address"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string/jumbo v2, "sms_body"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "smsto:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 147
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    :goto_0
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 152
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.SEND"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 153
    const-string/jumbo v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    const-string/jumbo v2, "android.intent.extra.SUBJECT"

    const v3, 0x7f0c04eb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 155
    const-string/jumbo v2, "android.intent.extra.TEXT"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const v0, 0x7f0c07b1

    :try_start_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    invoke-static {p0, v5, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 61
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->b()V

    .line 62
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->c()Lcom/viber/voip/contacts/c/f/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/p;->b()I

    move-result v0

    return v0
.end method

.method public a(ILcom/viber/voip/contacts/ui/bu;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-virtual {p2, p3, p4}, Lcom/viber/voip/contacts/ui/bu;->a(IZ)V

    .line 230
    return-void
.end method

.method public a(JJLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    move-object v0, p5

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, p6

    move-object v6, p7

    invoke-static/range {v0 .. v6}, Lcom/viber/voip/messages/j;->a(Ljava/lang/String;JJLjava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 83
    const-string/jumbo v1, "send_1to1"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 84
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 85
    return-void
.end method

.method public a(Landroid/content/Context;Lcom/viber/voip/contacts/b/e;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 76
    const-string/jumbo v0, "tel"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 78
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.viber.voip.action.CALL"

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {v1, v2}, Lcom/viber/service/b;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 79
    return-void
.end method

.method public a(Z)Z
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 168
    const/4 v1, 0x0

    .line 169
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/viber/voip/ViberApplication;->getPhoneController(Z)Lcom/viber/jni/PhoneControllerWrapper;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v3

    sget-object v4, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->NO_INTERNET:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v3, v4, :cond_3

    .line 171
    const-string/jumbo v1, "com.viber.voip.action.CONNECTION_PROBLEM"

    .line 176
    :cond_0
    :goto_0
    if-eqz p1, :cond_1

    .line 177
    if-eqz v1, :cond_1

    .line 178
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x1000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v2

    .line 179
    iget-object v3, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 183
    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0

    .line 172
    :cond_3
    invoke-virtual {v2}, Lcom/viber/jni/PhoneControllerWrapper;->getServiceState()Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    move-result-object v2

    sget-object v3, Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;->SERVICE_NOT_CONNECTED:Lcom/viber/jni/PhoneControllerDelegate$ViberConnectionState;

    if-ne v2, v3, :cond_0

    .line 173
    const-string/jumbo v1, "com.viber.voip.action.NO_SERVICE_DIALOG"

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/bp;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/viber/voip/contacts/ui/bp;->a()I

    .line 69
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 72
    invoke-virtual {p0, v0}, Lcom/viber/voip/contacts/ui/bp;->a(Z)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public d()V
    .locals 3

    .prologue
    .line 188
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    const/4 v1, 0x0

    const-string/jumbo v2, "Resetting contacts and closing application..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/viber/voip/contacts/ui/br;

    invoke-direct {v1, p0}, Lcom/viber/voip/contacts/ui/br;-><init>(Lcom/viber/voip/contacts/ui/bp;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 206
    return-void
.end method

.method public e()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/viber/provider/contacts/e;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 211
    sget-object v1, Lcom/viber/provider/contacts/f;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 212
    sget-object v1, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 213
    sget-object v1, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 214
    return-void
.end method

.method public f()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 217
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 218
    const-string/jumbo v1, "viber"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 219
    iget-object v1, p0, Lcom/viber/voip/contacts/ui/bp;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 220
    sget-object v2, Lcom/viber/provider/contacts/g;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 221
    sget-object v2, Lcom/viber/provider/contacts/d;->a:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 222
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/d/b;->c()Lcom/viber/voip/contacts/c/f/b/p;

    move-result-object v0

    invoke-interface {v0}, Lcom/viber/voip/contacts/c/f/b/p;->c()V

    .line 223
    return-void
.end method
