.class public Lcom/viber/voip/user/YouFragment$PreferenceItems;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALL:Ljava/util/List;
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
    .locals 11

    .prologue
    const v2, 0x7f0203f7

    const v10, 0x7f020338

    const v9, 0x7f0202ad

    const v8, 0x7f0201bd

    const v7, 0x7f02014b

    .line 99
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    .line 102
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v3, 0x7f070058

    const v4, 0x7f020432

    const v5, 0x7f020432

    const v6, 0x7f0c07b8

    invoke-direct {v1, v3, v4, v5, v6}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    invoke-static {}, Lcom/viber/voip/rakuten/l;->a()Lcom/viber/voip/rakuten/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/viber/voip/rakuten/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v3, 0x7f070059

    const v4, 0x7f0c078d

    invoke-direct {v1, v3, v10, v10, v4}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_0
    sget-object v6, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v1, 0x7f07005a

    const v4, 0x7f0c05a5

    const/4 v5, 0x1

    move v3, v2

    invoke-direct/range {v0 .. v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIIIZ)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    invoke-static {}, Lcom/viber/voip/registration/dj;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 110
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f07005b

    const v3, 0x7f0c06d9

    invoke-direct {v1, v2, v8, v8, v3}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_1
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f07005c

    const v3, 0x7f0203d1

    const v4, 0x7f0203d2

    const v5, 0x7f0c03d8

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f07005e

    const v3, 0x7f0c04ea

    invoke-direct {v1, v2, v7, v7, v3}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    new-instance v1, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    const v2, 0x7f070060

    const v3, 0x7f0c0436

    invoke-direct {v1, v2, v9, v9, v3}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getItemById(I)Lcom/viber/voip/user/YouFragment$PreferenceItem;
    .locals 2
    .parameter

    .prologue
    .line 122
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 123
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    iget v0, v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    if-ne p0, v0, :cond_0

    .line 124
    sget-object v0, Lcom/viber/voip/user/YouFragment$PreferenceItems;->ALL:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/viber/voip/user/YouFragment$PreferenceItem;

    .line 127
    :goto_1
    return-object v0

    .line 122
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 127
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method
