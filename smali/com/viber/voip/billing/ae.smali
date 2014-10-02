.class public Lcom/viber/voip/billing/ae;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lcom/viber/voip/billing/ae;->a:Ljava/lang/String;

    .line 146
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/viber/voip/util/hd;->a(Lcom/viber/voip/ViberApplication;Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/billing/ae;->b:Ljava/lang/String;

    .line 147
    return-void
.end method

.method static synthetic a(Lcom/viber/voip/billing/ae;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 135
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/viber/voip/billing/ae;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/viber/voip/billing/ae;->c:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/viber/voip/billing/ag;)V
    .locals 3
    .parameter

    .prologue
    .line 162
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/viber/voip/billing/ag;->a(Ljava/lang/String;)V

    .line 180
    :goto_0
    return-void

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/viber/voip/billing/ae;->b:Ljava/lang/String;

    .line 166
    :goto_1
    invoke-static {}, Lcom/viber/voip/ViberApplication;->getInstance()Lcom/viber/voip/ViberApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/viber/voip/ViberApplication;->getContactManager()Lcom/viber/voip/contacts/c/d/b;

    move-result-object v1

    new-instance v2, Lcom/viber/voip/billing/af;

    invoke-direct {v2, p0, p1}, Lcom/viber/voip/billing/af;-><init>(Lcom/viber/voip/billing/ae;Lcom/viber/voip/billing/ag;)V

    invoke-interface {v1, v0, v2}, Lcom/viber/voip/contacts/c/d/b;->a(Ljava/lang/String;Lcom/viber/voip/contacts/c/d/i;)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->a:Ljava/lang/String;

    goto :goto_1
.end method

.method public b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/billing/ae;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/billing/ae;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
