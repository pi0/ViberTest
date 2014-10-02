.class abstract Lcom/viber/voip/e/a/a/g;
.super Lcom/viber/voip/e/a/a/b;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/e/a/a;


# instance fields
.field protected d:Lcom/viber/voip/util/l;

.field private e:Lcom/viber/voip/messages/extras/a/e;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/viber/voip/e/a/a/b;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance v0, Lcom/viber/voip/messages/extras/a/e;

    invoke-direct {v0}, Lcom/viber/voip/messages/extras/a/e;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/e/a/a/g;->e:Lcom/viber/voip/messages/extras/a/e;

    .line 51
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/ViberApplication;->getBiDiAwareFormatter()Lcom/viber/voip/util/l;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/e/a/a/g;->d:Lcom/viber/voip/util/l;

    .line 52
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 230
    const/4 v0, 0x3

    const-string/jumbo v1, "ViberNotificationFactory"

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Intent;I)Landroid/app/PendingIntent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const/high16 v1, 0x800

    invoke-static {v0, p2, p1, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a(I[Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 144
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    iget v3, p0, Lcom/viber/voip/e/a/a/g;->c:I

    iget v4, p0, Lcom/viber/voip/e/a/a/g;->b:I

    move v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/messages/extras/image/h;->a(ILandroid/content/Context;III[Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(JLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 148
    invoke-static {}, Lcom/viber/voip/messages/a/b;->d()Lcom/viber/voip/messages/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const/4 v2, 0x0

    iget v3, p0, Lcom/viber/voip/e/a/a/g;->c:I

    iget v4, p0, Lcom/viber/voip/e/a/a/g;->b:I

    move-wide v5, p1

    move-object v7, p3

    invoke-interface/range {v0 .. v7}, Lcom/viber/voip/messages/a/a;->a(Landroid/content/Context;IIIJLcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "getBitmapFromUri photoUri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 133
    if-nez p1, :cond_1

    if-gtz p2, :cond_1

    .line 134
    const/4 v0, 0x0

    .line 140
    :cond_0
    :goto_0
    return-object v0

    .line 137
    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/b/w;->a(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8

    .prologue
    const/high16 v5, 0x1000

    .line 97
    const-string/jumbo v0, "createNewVersionNotification"

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const v1, 0x7f0c02eb

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 100
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const v1, 0x7f0c02ec

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 104
    const-string/jumbo v3, "market://details?id=com.viber.voip"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 105
    iget-object v3, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 107
    const v3, 0x7f020337

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v4, v2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;I)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 9
    .parameter
    .parameter

    .prologue
    const v3, 0x7f0c07a6

    const/4 v8, 0x0

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createServiceStatusNotification contentText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 59
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const-class v2, Lcom/viber/voip/WelcomeActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    iget-object v1, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-static {v1, v8, v0, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 62
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, v8, v8, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILandroid/content/Intent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createSmsNotification contentText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " contentTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const v1, 0x7f0c07a6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    .line 81
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-static {v0, v2, p4, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v7}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;JLandroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "createSmsNotification contentText = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " contentTitle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/viber/voip/e/a/a/g;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;IZ)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected a(II)Ljava/lang/String;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 156
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->e:Lcom/viber/voip/messages/extras/a/e;

    div-int/lit8 v1, p1, 0xa

    invoke-static {v1}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v1

    div-int/lit8 v3, p2, 0xa

    invoke-static {v3}, Lcom/viber/voip/messages/extras/map/d;->a(I)D

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/viber/voip/messages/extras/a/e;->a(DD)Lcom/viber/voip/messages/extras/a/d;

    move-result-object v0

    iget-object v0, v0, Lcom/viber/voip/messages/extras/a/d;->b:Ljava/lang/String;

    .line 157
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method protected a(JLjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)[Ljava/lang/CharSequence;
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/viber/voip/messages/controller/c/as;->o(J)Ljava/util/List;

    move-result-object v0

    .line 207
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    .line 210
    const-string/jumbo v5, "group_rename"

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 211
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->isPublicGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 218
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 219
    if-le v4, v1, :cond_1

    if-nez v0, :cond_1

    .line 220
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object p3, v0, v8

    .line 221
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0c02c7

    new-array v7, v9, [Ljava/lang/Object;

    aput-object p3, v7, v2

    add-int/lit8 v0, v4, -0x1

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v0}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getBody()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, v9

    aput-object v0, v7, v1

    aput-object p5, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 225
    :cond_1
    new-array v0, v8, [Ljava/lang/CharSequence;

    aput-object p3, v0, v2

    aput-object p4, v0, v1

    .line 226
    return-object v0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected b(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 152
    iget-object v0, p0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/viber/voip/messages/extras/image/h;->b(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected b()Lcom/viber/voip/e/a/a/d;
    .locals 19

    .prologue
    .line 162
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 164
    invoke-static {}, Lcom/viber/voip/messages/controller/c/as;->a()Lcom/viber/voip/messages/controller/c/as;

    move-result-object v7

    .line 165
    invoke-virtual {v7}, Lcom/viber/voip/messages/controller/c/as;->l()Ljava/util/List;

    move-result-object v8

    .line 167
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_2

    const/4 v1, 0x4

    move v2, v1

    .line 168
    :goto_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const/4 v1, 0x0

    move v5, v1

    :goto_1
    if-ge v5, v2, :cond_c

    .line 171
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getConversationId()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->c(J)Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;

    move-result-object v10

    .line 172
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getParticipantId()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/viber/voip/messages/controller/c/as;->j(J)Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;

    move-result-object v11

    .line 173
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isConversationGroup()Z

    move-result v12

    .line 174
    if-eqz v10, :cond_0

    if-nez v11, :cond_5

    .line 175
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAggregatedConversationsContentData: messageConversation is null - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v10, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "pInfo is null - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v11, :cond_4

    const/4 v1, 0x1

    :goto_3
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, ". Skip"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-direct {v0, v1}, Lcom/viber/voip/e/a/a/g;->a(Ljava/lang/String;)V

    .line 169
    :cond_1
    :goto_4
    add-int/lit8 v1, v5, 0x1

    move v5, v1

    goto :goto_1

    .line 167
    :cond_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    move v2, v1

    goto :goto_0

    .line 175
    :cond_3
    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 179
    :cond_5
    if-eqz v12, :cond_b

    .line 180
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getUnreadMessagesCount()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_9

    const-wide/16 v3, 0x0

    .line 181
    :goto_5
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;

    invoke-virtual {v1}, Lcom/viber/voip/messages/orm/entity/impl/MessageEntityImpl;->getDate()J

    move-result-wide v13

    .line 183
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v1

    if-eqz v1, :cond_6

    const-wide/16 v15, 0x0

    cmp-long v1, v3, v15

    if-nez v1, :cond_6

    sub-long v15, v13, v3

    const-wide/32 v17, 0x493e0

    cmp-long v1, v15, v17

    if-ltz v1, :cond_6

    cmp-long v1, v3, v13

    if-lez v1, :cond_7

    :cond_6
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->isSmartNotificationOn()Z

    move-result v1

    if-nez v1, :cond_1

    .line 185
    :cond_7
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0c04a3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    :goto_7
    const-string/jumbo v1, ", "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    if-eqz v5, :cond_8

    invoke-virtual {v11, v12}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage(Z)Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 197
    :cond_8
    invoke-virtual {v11}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactImage()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 180
    :cond_9
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getSmartEventDate()J

    move-result-wide v3

    goto :goto_5

    .line 185
    :cond_a
    invoke-virtual {v10}, Lcom/viber/voip/messages/orm/entity/impl/ConversationEntityImpl;->getGroupName()Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 191
    :cond_b
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Lcom/viber/voip/messages/orm/entity/impl/ParticipantInfoEntityImpl;->getCommonContactName(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 201
    :cond_c
    new-instance v2, Lcom/viber/voip/e/a/a/d;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/viber/voip/e/a/a/g;->a:Landroid/content/Context;

    const v4, 0x7f0c02c3

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_d

    const/4 v1, 0x0

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    invoke-virtual {v9, v1, v8}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_8
    aput-object v1, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v6, v1}, Lcom/viber/voip/e/a/a/d;-><init>(Ljava/util/List;Ljava/lang/String;)V

    return-object v2

    :cond_d
    const-string/jumbo v1, ""

    goto :goto_8
.end method
