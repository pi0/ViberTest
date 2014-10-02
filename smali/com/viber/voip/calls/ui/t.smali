.class public final Lcom/viber/voip/calls/ui/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic a:Z


# instance fields
.field final synthetic b:Lcom/viber/voip/calls/ui/q;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 155
    const-class v0, Lcom/viber/voip/calls/ui/q;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/viber/voip/calls/ui/t;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Lcom/viber/voip/calls/ui/q;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 156
    iput-object p1, p0, Lcom/viber/voip/calls/ui/t;->b:Lcom/viber/voip/calls/ui/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1
    .parameter

    .prologue
    .line 160
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 161
    const v0, 0x7f02030c

    .line 167
    :goto_0
    return v0

    .line 162
    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 163
    const v0, 0x7f02030d

    goto :goto_0

    .line 164
    :cond_1
    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_3

    .line 165
    :cond_2
    const v0, 0x7f02030b

    goto :goto_0

    .line 167
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(J)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    .line 185
    iget-object v0, p0, Lcom/viber/voip/calls/ui/t;->b:Lcom/viber/voip/calls/ui/q;

    invoke-static {v0}, Lcom/viber/voip/calls/ui/q;->a(Lcom/viber/voip/calls/ui/q;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 186
    invoke-static {}, Lcom/viber/voip/settings/j;->I()Ljava/lang/String;

    move-result-object v0

    .line 187
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, v0}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {v1}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 189
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    .line 190
    sget-boolean v2, Lcom/viber/voip/calls/ui/t;->a:Z

    if-nez v2, :cond_0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 192
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 193
    iput-object v1, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 194
    iget-object v1, p0, Lcom/viber/voip/calls/ui/t;->b:Lcom/viber/voip/calls/ui/q;

    iget-object v1, v1, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 196
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    const/high16 v6, 0x1

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Landroid/text/format/DateUtils;->getRelativeTimeSpanString(JJJI)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 171
    iget-object v0, p0, Lcom/viber/voip/calls/ui/t;->b:Lcom/viber/voip/calls/ui/q;

    iget-object v0, v0, Lcom/viber/voip/calls/ui/q;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 172
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 173
    const v1, 0x7f0c036d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    .line 174
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 175
    const v1, 0x7f0c036c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 176
    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 177
    const v1, 0x7f0c036b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 178
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_3

    .line 179
    const v1, 0x7f0c036f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 181
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
