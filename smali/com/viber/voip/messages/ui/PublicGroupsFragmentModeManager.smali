.class public Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;
.super Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;-><init>(Lcom/viber/voip/messages/ui/dk;Lcom/viber/voip/messages/ui/dn;Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;Lcom/viber/voip/messages/ui/do;)V

    .line 20
    return-void
.end method

.method private a(Landroid/app/Activity;)V
    .locals 6
    .parameter

    .prologue
    .line 43
    const v1, 0x7f0c0695

    const v2, 0x7f0c0698

    new-instance v3, Lcom/viber/voip/messages/ui/ed;

    invoke-direct {v3, p0}, Lcom/viber/voip/messages/ui/ed;-><init>(Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/viber/voip/util/at;->a(Landroid/content/Context;IILcom/viber/voip/util/az;Ljava/lang/Runnable;Z)Landroid/content/DialogInterface;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->d:Landroid/app/AlertDialog;

    .line 51
    return-void
.end method


# virtual methods
.method public a(Lcom/viber/voip/messages/adapters/a/a;)Lcom/viber/voip/messages/ui/dl;
    .locals 5
    .parameter

    .prologue
    .line 116
    move-object v0, p1

    check-cast v0, Lcom/viber/voip/messages/adapters/a/b;

    .line 117
    new-instance v1, Lcom/viber/voip/messages/ui/ee;

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->e()Z

    move-result v2

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->B()Z

    move-result v3

    invoke-interface {p1}, Lcom/viber/voip/messages/adapters/a/a;->C()Z

    move-result v4

    invoke-interface {v0}, Lcom/viber/voip/messages/adapters/a/b;->I()I

    move-result v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/viber/voip/messages/ui/ee;-><init>(ZZZI)V

    return-object v1
.end method

.method protected a(Landroid/app/Activity;ZZZZ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/messages/ui/dl;

    move-object v1, v0

    .line 30
    check-cast v1, Lcom/viber/voip/messages/ui/ee;

    invoke-static {v1}, Lcom/viber/voip/messages/ui/ee;->a(Lcom/viber/voip/messages/ui/ee;)I

    move-result v1

    if-ne v1, v2, :cond_0

    iget-boolean v0, v0, Lcom/viber/voip/messages/ui/dl;->c:Z

    if-nez v0, :cond_0

    move v0, v2

    .line 35
    :goto_0
    if-eqz v0, :cond_1

    .line 36
    invoke-direct {p0, p1}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->a(Landroid/app/Activity;)V

    .line 40
    :goto_1
    return-void

    .line 38
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/viber/voip/messages/ui/MessagesFragmentModeManager;->a(Landroid/app/Activity;ZZZZ)V

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public g()Lcom/viber/voip/messages/ui/MessagesFragmentModeManager$MessagesFragmentModeManagerData;
    .locals 1

    .prologue
    .line 123
    new-instance v0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;

    invoke-direct {v0, p0}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager$PublicGroupsFragmentModeManagerData;-><init>(Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;)V

    return-object v0
.end method

.method public w()V
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->b:Lcom/viber/voip/messages/ui/dk;

    invoke-virtual {p0}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->a()Ljava/util/LinkedHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/viber/voip/messages/ui/dk;->a(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/viber/voip/messages/ui/PublicGroupsFragmentModeManager;->a(Ljava/util/Map;Z)V

    .line 129
    return-void
.end method
