.class public Lcom/viber/voip/contacts/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/text/Collator;


# direct methods
.method public constructor <init>(Ljava/util/Locale;)V
    .locals 2
    .parameter

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/viber/voip/contacts/a/b;->a:Ljava/text/Collator;

    .line 101
    iget-object v0, p0, Lcom/viber/voip/contacts/a/b;->a:Ljava/text/Collator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/Collator;->setStrength(I)V

    .line 102
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Character;Ljava/lang/Character;)I
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/viber/voip/contacts/a/b;->a:Ljava/text/Collator;

    invoke-virtual {p1}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Character;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Character;

    check-cast p2, Ljava/lang/Character;

    invoke-virtual {p0, p1, p2}, Lcom/viber/voip/contacts/a/b;->a(Ljava/lang/Character;Ljava/lang/Character;)I

    move-result v0

    return v0
.end method
