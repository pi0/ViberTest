.class public Lcom/viber/voip/settings/ui/ca;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/viber/voip/user/YouFragment$PreferenceItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f0200a2

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    .line 58
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c029e

    const v3, 0x7f020383

    const v4, 0x7f020384

    const v5, 0x7f0c04ff

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c029f

    const v3, 0x7f02036d

    const v4, 0x7f0200a0

    const v5, 0x7f0c0500

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c02a0

    const v3, 0x7f020367

    const v4, 0x7f02009c

    const v5, 0x7f0c0501

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c02a1

    const v3, 0x7f0200a1

    const v4, 0x7f02009f

    const v5, 0x7f0c0502

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c02a2

    const v3, 0x7f02028c

    const v4, 0x7f02009d

    const v5, 0x7f0c0504

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c02a3

    const v3, 0x7f0202c4

    const v4, 0x7f02009e

    const v5, 0x7f0c0505

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f0c028e

    const v3, 0x7f0c04f6

    invoke-direct {v1, v2, v6, v6, v3}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    return-void
.end method

.method public static a(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;
    .locals 2
    .parameter

    .prologue
    .line 74
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 75
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    if-ne p0, v0, :cond_0

    .line 76
    sget-object v0, Lcom/viber/voip/settings/ui/ca;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    .line 79
    :goto_1
    return-object v0

    .line 74
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
