.class public Lcom/viber/voip/contacts/ui/cn;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Z

.field public c:Z

.field final synthetic d:Lcom/viber/voip/contacts/ui/cb;

.field private e:Lcom/viber/voip/contacts/b/e;

.field private f:Lcom/viber/voip/messages/conversation/ar;


# direct methods
.method protected constructor <init>(Lcom/viber/voip/contacts/ui/cb;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cn;->d:Lcom/viber/voip/contacts/ui/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->a:Z

    .line 91
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->b:Z

    .line 92
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->c:Z

    .line 97
    return-void
.end method

.method private constructor <init>(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 99
    iput-object p1, p0, Lcom/viber/voip/contacts/ui/cn;->d:Lcom/viber/voip/contacts/ui/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->a:Z

    .line 91
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->b:Z

    .line 92
    iput-boolean v0, p0, Lcom/viber/voip/contacts/ui/cn;->c:Z

    .line 100
    iput-object p2, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    .line 101
    return-void
.end method

.method synthetic constructor <init>(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;Lcom/viber/voip/contacts/ui/cc;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 89
    invoke-direct {p0, p1, p2}, Lcom/viber/voip/contacts/ui/cn;-><init>(Lcom/viber/voip/contacts/ui/cb;Lcom/viber/voip/contacts/b/e;)V

    return-void
.end method

.method static synthetic a(Lcom/viber/voip/contacts/ui/cn;)Lcom/viber/voip/contacts/b/e;
    .locals 1
    .parameter

    .prologue
    .line 89
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    return-object v0
.end method


# virtual methods
.method public a(Z)Lcom/viber/voip/contacts/ui/cn;
    .locals 0
    .parameter

    .prologue
    .line 104
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/cn;->a:Z

    .line 105
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->f:Lcom/viber/voip/messages/conversation/ar;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->f:Lcom/viber/voip/messages/conversation/ar;

    invoke-virtual {v0}, Lcom/viber/voip/messages/conversation/ar;->d()Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 124
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public b()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/viber/voip/contacts/ui/cn;->e:Lcom/viber/voip/contacts/b/e;

    invoke-interface {v0}, Lcom/viber/voip/contacts/b/e;->b()Landroid/net/Uri;

    move-result-object v0

    .line 131
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Z)Lcom/viber/voip/contacts/ui/cn;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/cn;->b:Z

    .line 110
    return-object p0
.end method

.method public c(Z)Lcom/viber/voip/contacts/ui/cn;
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-boolean p1, p0, Lcom/viber/voip/contacts/ui/cn;->c:Z

    .line 115
    return-object p0
.end method
