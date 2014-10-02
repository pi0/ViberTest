.class public Lcom/viber/voip/stickers/e/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/NotificationManager;

.field private b:Landroid/content/Context;

.field private c:Lcom/viber/voip/stickers/e/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    .line 24
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    .line 25
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/viber/voip/stickers/e/g;

    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/stickers/e/g;-><init>(Landroid/content/Context;)V

    :goto_0
    iput-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    .line 26
    return-void

    .line 25
    :cond_0
    new-instance v0, Lcom/viber/voip/stickers/e/b;

    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/viber/voip/stickers/e/b;-><init>(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .parameter

    .prologue
    .line 73
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 74
    return-void
.end method

.method public a(IILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 40
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    const v1, 0x7f0c05f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 41
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    const/4 v6, 0x1

    const/4 v8, 0x0

    move v1, p1

    move-object v2, p3

    move-object v5, p4

    move v7, p2

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/stickers/e/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;

    move-result-object v0

    .line 42
    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 43
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 44
    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    const v1, 0x7f0c05f2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 31
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    const-string/jumbo v4, ""

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    move v8, v6

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/stickers/e/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;

    move-result-object v0

    .line 32
    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 33
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 34
    return-void
.end method

.method public a(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 47
    .line 48
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    const v1, 0x7f0c05f4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 49
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    const-string/jumbo v4, ""

    const/4 v8, 0x1

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move v7, v6

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/stickers/e/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;

    move-result-object v0

    .line 50
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 51
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 52
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 53
    return-void
.end method

.method public b(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 56
    .line 57
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    const v1, 0x7f0c05f3

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 58
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    const-string/jumbo v4, ""

    const/4 v8, 0x1

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move v7, v6

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/stickers/e/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;

    move-result-object v0

    .line 59
    const/16 v1, 0x10

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 60
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 61
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 62
    return-void
.end method

.method public c(ILjava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 9
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    .line 65
    .line 66
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->b:Landroid/content/Context;

    const v1, 0x7f0c05f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 67
    iget-object v0, p0, Lcom/viber/voip/stickers/e/h;->c:Lcom/viber/voip/stickers/e/a;

    const-string/jumbo v4, ""

    const/4 v7, 0x0

    move v1, p1

    move-object v2, p2

    move-object v5, p3

    move v8, v6

    invoke-interface/range {v0 .. v8}, Lcom/viber/voip/stickers/e/a;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;ZIZ)Landroid/app/Notification;

    move-result-object v0

    .line 68
    const/16 v1, 0x20

    iput v1, v0, Landroid/app/Notification;->flags:I

    .line 69
    iget-object v1, p0, Lcom/viber/voip/stickers/e/h;->a:Landroid/app/NotificationManager;

    invoke-virtual {v1, p1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 70
    return-void
.end method
