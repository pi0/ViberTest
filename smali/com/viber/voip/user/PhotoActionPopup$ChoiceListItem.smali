.class final Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ID_EDIT_NAME:I = 0x4

.field public static final ID_IMPORT_FROM_FACEBOOK:I = 0x5

.field public static final ID_PICK_PHOTO:I = 0x2

.field public static final ID_REMOVE:I = 0x3

.field public static final ID_TAKE_PHOTO:I = 0x1

.field public static final ID_USE_AS_PRIMARY:I


# instance fields
.field private final mCaption:Ljava/lang/String;

.field private final mId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput p1, p0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;->mId:I

    .line 153
    iput-object p2, p0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    .line 154
    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;->mId:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/viber/voip/user/PhotoActionPopup$ChoiceListItem;->mCaption:Ljava/lang/String;

    return-object v0
.end method
