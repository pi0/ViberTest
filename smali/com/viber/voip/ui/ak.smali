.class public Lcom/viber/voip/ui/ak;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 876
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 878
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    instance-of v0, p1, Lcom/viber/voip/ui/b/b;

    if-eqz v0, :cond_1

    .line 881
    check-cast p1, Lcom/viber/voip/ui/b/b;

    invoke-virtual {p1}, Lcom/viber/voip/ui/b/b;->c()Lcom/viber/voip/ui/b/f;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/conversation/a/a/a;

    .line 882
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->j()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 883
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->j()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 884
    invoke-interface {v0}, Lcom/viber/voip/messages/conversation/a/a/a;->O()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/ak;->c(Z)V

    .line 894
    :cond_0
    :goto_0
    return-void

    .line 886
    :cond_1
    instance-of v0, p1, Lcom/viber/voip/ui/ak;

    if-eqz v0, :cond_0

    .line 887
    check-cast p1, Lcom/viber/voip/ui/ak;

    .line 888
    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->a()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ak;->a(Z)V

    .line 889
    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->d()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ak;->b(Z)V

    .line 890
    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ak;->a(Ljava/lang/String;)V

    .line 891
    invoke-virtual {p1}, Lcom/viber/voip/ui/ak;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/viber/voip/ui/ak;->b(Ljava/lang/String;)V

    .line 892
    invoke-virtual {p0, v2}, Lcom/viber/voip/ui/ak;->c(Z)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/viber/voip/ui/ak;)Z
    .locals 1
    .parameter

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/viber/voip/ui/ak;->b:Z

    return v0
.end method

.method static synthetic b(Lcom/viber/voip/ui/ak;)Z
    .locals 1
    .parameter

    .prologue
    .line 867
    iget-boolean v0, p0, Lcom/viber/voip/ui/ak;->e:Z

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 909
    iput-object p1, p0, Lcom/viber/voip/ui/ak;->c:Ljava/lang/String;

    .line 910
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 901
    iput-boolean p1, p0, Lcom/viber/voip/ui/ak;->b:Z

    .line 902
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 897
    iget-boolean v0, p0, Lcom/viber/voip/ui/ak;->b:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 905
    iget-object v0, p0, Lcom/viber/voip/ui/ak;->c:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 917
    iput-object p1, p0, Lcom/viber/voip/ui/ak;->d:Ljava/lang/String;

    .line 918
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 925
    iput-boolean p1, p0, Lcom/viber/voip/ui/ak;->a:Z

    .line 926
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 913
    iget-object v0, p0, Lcom/viber/voip/ui/ak;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Z)V
    .locals 0
    .parameter

    .prologue
    .line 933
    iput-boolean p1, p0, Lcom/viber/voip/ui/ak;->e:Z

    .line 934
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/viber/voip/ui/ak;->a:Z

    return v0
.end method
