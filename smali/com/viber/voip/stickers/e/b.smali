.class public Lcom/viber/voip/stickers/e/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/e/a;


# instance fields
.field private a:Landroid/support/v4/app/NotificationCompat$Builder;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/e/b;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 23
    iput-object p1, p0, Lcom/viber/voip/stickers/e/b;->b:Landroid/content/Context;

    .line 24
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 28
    iget-object v0, p0, Lcom/viber/voip/stickers/e/b;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    const v1, 0x7f0202a4

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentInfo(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/stickers/e/b;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/viber/voip/market/MarketActivity;->b(I)Landroid/content/Intent;

    move-result-object v2

    invoke-static {v1, p1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 36
    if-eqz p6, :cond_0

    .line 37
    iget-object v0, p0, Lcom/viber/voip/stickers/e/b;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p7, p8}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/viber/voip/stickers/e/b;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 43
    return-object v0

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/stickers/e/b;->a:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v0, v3, v3, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setProgress(IIZ)Landroid/support/v4/app/NotificationCompat$Builder;

    goto :goto_0
.end method
