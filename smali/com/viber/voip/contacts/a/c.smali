.class public abstract Lcom/viber/voip/contacts/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/viber/voip/messages/orm/entity/Entity;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/SectionIndexer;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Landroid/widget/SectionIndexer;

.field private final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/viber/voip/contacts/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/viber/voip/contacts/a/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/viber/provider/a;Ljava/lang/CharSequence;[Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Landroid/widget/AlphabetIndexer;

    new-instance v1, Lcom/viber/voip/contacts/a/d;

    invoke-direct {v1, p0, p1}, Lcom/viber/voip/contacts/a/d;-><init>(Lcom/viber/voip/contacts/a/c;Lcom/viber/provider/a;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p2}, Landroid/widget/AlphabetIndexer;-><init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/viber/voip/contacts/a/c;->b:Landroid/widget/SectionIndexer;

    .line 21
    iput-object p3, p0, Lcom/viber/voip/contacts/a/c;->c:[Ljava/lang/String;

    .line 22
    const-string/jumbo v0, "CREATE"

    invoke-direct {p0, v0}, Lcom/viber/voip/contacts/a/c;->b(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static a(C)Ljava/lang/Character;
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-static {p0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x20

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Character;
    .locals 3
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 77
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 78
    :goto_0
    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    :cond_0
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_1
    move v0, v1

    .line 77
    goto :goto_0
.end method

.method private b(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 86
    const/4 v0, 0x3

    sget-object v1, Lcom/viber/voip/contacts/a/c;->a:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/viber/voip/ViberApplication;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method protected abstract a(Lcom/viber/voip/messages/orm/entity/Entity;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method public getPositionForSection(I)I
    .locals 1
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/viber/voip/contacts/a/c;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/viber/voip/contacts/a/c;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/viber/voip/contacts/a/c;->c:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/viber/voip/contacts/a/c;->c:[Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/viber/voip/contacts/a/c;->b:Landroid/widget/SectionIndexer;

    invoke-interface {v0}, Landroid/widget/SectionIndexer;->getSections()[Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
