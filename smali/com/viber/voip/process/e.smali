.class public Lcom/viber/voip/process/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/stickers/d/b;


# static fields
.field private static final b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static i:Lcom/viber/voip/process/e;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/viber/voip/process/i;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/viber/voip/process/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/process/e;->b:Ljava/lang/String;

    .line 27
    const-string/jumbo v0, "method"

    sput-object v0, Lcom/viber/voip/process/e;->c:Ljava/lang/String;

    .line 29
    const-string/jumbo v0, "package_id"

    sput-object v0, Lcom/viber/voip/process/e;->d:Ljava/lang/String;

    .line 30
    const-string/jumbo v0, "package_title"

    sput-object v0, Lcom/viber/voip/process/e;->e:Ljava/lang/String;

    .line 31
    const-string/jumbo v0, "percent"

    sput-object v0, Lcom/viber/voip/process/e;->f:Ljava/lang/String;

    .line 32
    const-string/jumbo v0, "critical_error"

    sput-object v0, Lcom/viber/voip/process/e;->g:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    .line 73
    iput-object p1, p0, Lcom/viber/voip/process/e;->h:Landroid/content/Context;

    .line 74
    return-void
.end method

.method private a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 133
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "RemoteStickerDeploymentReceiver.action"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/viber/voip/process/e;->c:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/viber/voip/process/h;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    sget-object v1, Lcom/viber/voip/process/e;->d:Ljava/lang/String;

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    sget-object v1, Lcom/viber/voip/process/e;->e:Ljava/lang/String;

    invoke-interface {p2}, Lcom/viber/voip/stickers/c/d;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    return-object v0
.end method

.method public static a()Lcom/viber/voip/process/e;
    .locals 2

    .prologue
    .line 65
    sget-object v0, Lcom/viber/voip/process/e;->i:Lcom/viber/voip/process/e;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/viber/voip/process/e;

    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/viber/voip/process/e;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/viber/voip/process/e;->i:Lcom/viber/voip/process/e;

    .line 68
    :cond_0
    sget-object v0, Lcom/viber/voip/process/e;->i:Lcom/viber/voip/process/e;

    return-object v0
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 1
    .parameter

    .prologue
    .line 180
    const-string/jumbo v0, "unregisterReceiver()"

    invoke-static {v0}, Lcom/viber/voip/process/e;->a(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/viber/voip/process/e;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 182
    return-void
.end method

.method private a(Landroid/content/Intent;)V
    .locals 1
    .parameter

    .prologue
    .line 140
    iget-object v0, p0, Lcom/viber/voip/process/e;->h:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 141
    return-void
.end method

.method protected static a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 186
    return-void
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/process/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c(Lcom/viber/voip/process/i;)Landroid/content/BroadcastReceiver;
    .locals 4
    .parameter

    .prologue
    .line 145
    const-string/jumbo v0, "registerReceiver()"

    invoke-static {v0}, Lcom/viber/voip/process/e;->a(Ljava/lang/String;)V

    .line 146
    new-instance v0, Lcom/viber/voip/process/f;

    invoke-direct {v0, p0, p1}, Lcom/viber/voip/process/f;-><init>(Lcom/viber/voip/process/e;Lcom/viber/voip/process/i;)V

    .line 175
    iget-object v1, p0, Lcom/viber/voip/process/e;->h:Landroid/content/Context;

    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "RemoteStickerDeploymentReceiver.action"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    return-object v0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/process/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/process/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/process/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/viber/voip/process/e;->g:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/viber/voip/process/i;)V
    .locals 2
    .parameter

    .prologue
    .line 77
    iget-object v0, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-direct {p0, p1}, Lcom/viber/voip/process/e;->c(Lcom/viber/voip/process/i;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    .line 79
    iget-object v1, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "+++ RemoteStickerDeploymentListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/e;->a(Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/a;)V
    .locals 0
    .parameter

    .prologue
    .line 98
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 108
    sget-object v0, Lcom/viber/voip/process/h;->b:Lcom/viber/voip/process/h;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/Intent;)V

    .line 110
    return-void
.end method

.method public a(Lcom/viber/voip/stickers/c/d;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 120
    sget-object v0, Lcom/viber/voip/process/h;->d:Lcom/viber/voip/process/h;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;

    move-result-object v0

    .line 121
    sget-object v1, Lcom/viber/voip/process/e;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 122
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/Intent;)V

    .line 123
    return-void
.end method

.method public a(ZLcom/viber/voip/stickers/c/d;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 127
    sget-object v0, Lcom/viber/voip/process/h;->e:Lcom/viber/voip/process/h;

    invoke-direct {p0, v0, p2}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;

    move-result-object v0

    .line 128
    sget-object v1, Lcom/viber/voip/process/e;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/Intent;)V

    .line 130
    return-void
.end method

.method public b(Lcom/viber/voip/process/i;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    .line 87
    if-eqz v0, :cond_0

    .line 88
    iget-object v1, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/BroadcastReceiver;)V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "--- RemoteStickerDeploymentListener("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/process/e;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/viber/voip/process/e;->a(Ljava/lang/String;)V

    .line 92
    :cond_0
    return-void
.end method

.method public b(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 114
    sget-object v0, Lcom/viber/voip/process/h;->c:Lcom/viber/voip/process/h;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;

    move-result-object v0

    .line 115
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/Intent;)V

    .line 116
    return-void
.end method

.method public c(Lcom/viber/voip/stickers/c/d;)V
    .locals 1
    .parameter

    .prologue
    .line 102
    sget-object v0, Lcom/viber/voip/process/h;->a:Lcom/viber/voip/process/h;

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/process/e;->a(Lcom/viber/voip/process/h;Lcom/viber/voip/stickers/c/d;)Landroid/content/Intent;

    move-result-object v0

    .line 103
    invoke-direct {p0, v0}, Lcom/viber/voip/process/e;->a(Landroid/content/Intent;)V

    .line 104
    return-void
.end method
