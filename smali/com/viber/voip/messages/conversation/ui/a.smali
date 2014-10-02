.class public Lcom/viber/voip/messages/conversation/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/viber/voip/messages/ui/cx;


# instance fields
.field private a:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

.field private b:Lcom/viber/voip/a/m;


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/ExpandablePanelLayout;)V
    .locals 1
    .parameter

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/viber/voip/a/a;->n:Lcom/viber/voip/a/m;

    iput-object v0, p0, Lcom/viber/voip/messages/conversation/ui/a;->b:Lcom/viber/voip/a/m;

    .line 16
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/a;->a:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    .line 17
    return-void
.end method

.method private a(IZ)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 39
    if-eqz p2, :cond_1

    .line 40
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/a;->b:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v1}, Lcom/viber/voip/a/ac;->c()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 41
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/a;->a:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a(I)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/a;->a:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0, p1}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-static {}, Lcom/viber/voip/a/bc;->a()Lcom/viber/voip/a/bc;

    move-result-object v0

    iget-object v1, p0, Lcom/viber/voip/messages/conversation/ui/a;->b:Lcom/viber/voip/a/m;

    iget-object v1, v1, Lcom/viber/voip/a/m;->b:Lcom/viber/voip/a/ac;

    invoke-virtual {v1}, Lcom/viber/voip/a/ac;->d()Lcom/viber/voip/a/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/viber/voip/a/bc;->a(Lcom/viber/voip/a/x;)V

    .line 44
    iget-object v0, p0, Lcom/viber/voip/messages/conversation/ui/a;->a:Lcom/viber/voip/messages/ui/ExpandablePanelLayout;

    invoke-virtual {v0}, Lcom/viber/voip/messages/ui/ExpandablePanelLayout;->a()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/viber/voip/a/m;)V
    .locals 0
    .parameter

    .prologue
    .line 20
    iput-object p1, p0, Lcom/viber/voip/messages/conversation/ui/a;->b:Lcom/viber/voip/a/m;

    .line 21
    return-void
.end method

.method public a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 25
    const v0, 0x7f0702d9

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/a;->a(IZ)V

    .line 26
    return-void
.end method

.method public b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 30
    const v0, 0x7f0702da

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/a;->a(IZ)V

    .line 31
    return-void
.end method

.method public c(Z)V
    .locals 1
    .parameter

    .prologue
    .line 35
    const v0, 0x7f070201

    invoke-direct {p0, v0, p1}, Lcom/viber/voip/messages/conversation/ui/a;->a(IZ)V

    .line 36
    return-void
.end method
