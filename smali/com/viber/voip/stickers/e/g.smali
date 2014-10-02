.class public Lcom/viber/voip/stickers/e/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/e/a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v4/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/viber/voip/stickers/e/g;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    .line 26
    iput-object p1, p0, Lcom/viber/voip/stickers/e/g;->a:Landroid/content/Context;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v5, 0x7f0703b8

    const v4, 0x7f0703b7

    const v3, 0x7f0202a4

    .line 31
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/viber/voip/stickers/e/g;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030128

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 33
    if-eqz p5, :cond_1

    .line 34
    invoke-virtual {v0, v4, p5}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 38
    :goto_0
    const v1, 0x7f070380

    invoke-virtual {v0, v1, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 39
    const v1, 0x7f07031d

    invoke-virtual {v0, v1, p3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    const v1, 0x7f0703b9

    invoke-virtual {v0, v1, p4}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    const/16 v1, 0x64

    invoke-virtual {v0, v5, v1, p7, p8}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 43
    if-nez p6, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 45
    :cond_0
    iget-object v1, p0, Lcom/viber/voip/stickers/e/g;->b:Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/viber/voip/stickers/e/g;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/viber/voip/market/MarketActivity;->b(I)Landroid/content/Intent;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, p1, v3, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 50
    iput-object v0, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 51
    return-object v1

    .line 36
    :cond_1
    invoke-virtual {v0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0
.end method
