.class public Lcom/viber/voip/e/a/a/c;
.super Landroid/support/v4/app/NotificationCompat$Builder;
.source "SourceFile"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 193
    invoke-direct {p0, p1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/viber/voip/e/a/a/c;->a:Z

    .line 194
    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .prologue
    .line 204
    iget-boolean v0, p0, Lcom/viber/voip/e/a/a/c;->a:Z

    return v0
.end method

.method public addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 199
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/viber/voip/e/a/a/c;->a:Z

    .line 200
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    return-object v0
.end method
