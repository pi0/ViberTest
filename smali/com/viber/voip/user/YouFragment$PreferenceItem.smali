.class public Lcom/viber/voip/user/YouFragment$PreferenceItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public barIcon:I

.field public icon:I

.field public id:I

.field public stickerItem:Z

.field public title:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput p1, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    .line 140
    iput p2, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->icon:I

    .line 141
    iput p4, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->title:I

    .line 142
    iput p3, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->barIcon:I

    .line 143
    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/viber/voip/user/YouFragment$PreferenceItem;-><init>(IIII)V

    .line 147
    iput-boolean p5, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->stickerItem:Z

    .line 148
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lcom/viber/voip/user/YouFragment$PreferenceItem;->id:I

    return v0
.end method
