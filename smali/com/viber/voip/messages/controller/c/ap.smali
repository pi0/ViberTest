.class public Lcom/viber/voip/messages/controller/c/ap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/c/ap;->b:Z

    .line 62
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/c/ap;->c:Z

    .line 63
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/c/ap;->d:Z

    .line 64
    iput-boolean v1, p0, Lcom/viber/voip/messages/controller/c/ap;->e:Z

    .line 65
    iput-boolean v1, p0, Lcom/viber/voip/messages/controller/c/ap;->f:Z

    .line 66
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/c/ap;->g:Z

    .line 68
    iput-boolean v1, p0, Lcom/viber/voip/messages/controller/c/ap;->h:Z

    return-void
.end method

.method private b()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ap;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ap;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/messages/controller/c/ap;->i:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/ap;->a:Ljava/lang/String;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/viber/voip/messages/controller/c/ap;->h:Z

    .line 125
    return-void

    .line 123
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/viber/voip/messages/controller/c/ao;
    .locals 9

    .prologue
    .line 72
    new-instance v0, Lcom/viber/voip/messages/controller/c/ao;

    iget-object v1, p0, Lcom/viber/voip/messages/controller/c/ap;->a:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/viber/voip/messages/controller/c/ap;->b:Z

    iget-boolean v3, p0, Lcom/viber/voip/messages/controller/c/ap;->c:Z

    iget-boolean v4, p0, Lcom/viber/voip/messages/controller/c/ap;->d:Z

    iget-boolean v5, p0, Lcom/viber/voip/messages/controller/c/ap;->e:Z

    iget-boolean v6, p0, Lcom/viber/voip/messages/controller/c/ap;->g:Z

    iget-boolean v7, p0, Lcom/viber/voip/messages/controller/c/ap;->f:Z

    iget-boolean v8, p0, Lcom/viber/voip/messages/controller/c/ap;->h:Z

    invoke-direct/range {v0 .. v8}, Lcom/viber/voip/messages/controller/c/ao;-><init>(Ljava/lang/String;ZZZZZZZ)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ap;->a:Ljava/lang/String;

    .line 81
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/ap;->b()V

    .line 82
    return-object p0
.end method

.method public a(Z)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/c/ap;->b:Z

    .line 87
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 116
    iput-object p1, p0, Lcom/viber/voip/messages/controller/c/ap;->i:Ljava/lang/String;

    .line 117
    invoke-direct {p0}, Lcom/viber/voip/messages/controller/c/ap;->b()V

    .line 118
    return-object p0
.end method

.method public b(Z)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/c/ap;->c:Z

    .line 92
    return-object p0
.end method

.method public c(Z)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/c/ap;->e:Z

    .line 102
    return-object p0
.end method

.method public d(Z)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 106
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/c/ap;->g:Z

    .line 107
    return-object p0
.end method

.method public e(Z)Lcom/viber/voip/messages/controller/c/ap;
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-boolean p1, p0, Lcom/viber/voip/messages/controller/c/ap;->f:Z

    .line 112
    return-object p0
.end method
